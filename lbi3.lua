[19] = function(instruction)	-- NOT
    stack[instruction.A] = not stack[instruction.B]
end,
[20] = function(instruction)	-- LEN
    stack[instruction.A] = #stack[instruction.B]
end,
[21] = function(instruction)	-- CONCAT
    local B = instruction.B
    local result = stack[B]
    for i = B+1, instruction.C do
        result = result .. stack[i]
    end
    stack[instruction.A] = result
end,
[22] = function(instruction)	-- JUMP
    IP = IP + instruction.sBx
end,
[23] = function(instruction)	-- EQ
    local A = instruction.A
    local B = instruction.B
    local C = instruction.C
    local stack, constants = stack, constants

    A = A ~= 0
    if (B > 255) then B = constants[B-256].data else B = stack[B] end
    if (C > 255) then C = constants[C-256].data else C = stack[C] end
    if (B == C) ~= A then
        IP = IP + 1
    end
end,
[24] = function(instruction)	-- LT
    local A = instruction.A
    local B = instruction.B
    local C = instruction.C
    local stack, constants = stack, constants

    A = A ~= 0
    B = B > 255 and constants[B-256].data or stack[B]
    C = C > 255 and constants[C-256].data or stack[C]
    if (B < C) ~= A then
        IP = IP + 1
    end
end,
[25] = function(instruction)	-- LT
    local A = instruction.A
    local B = instruction.B
    local C = instruction.C
    local stack, constants = stack, constants

    A = A ~= 0
    B = B > 255 and constants[B-256].data or stack[B]
    C = C > 255 and constants[C-256].data or stack[C]
    if (B <= C) ~= A then
        IP = IP + 1
    end
end,
[26] = function(instruction)	-- TEST
    local A = stack[instruction.A];
    if (not not A) == (instruction.C == 0) then
        IP = IP + 1
    end
end,
[27] = function(instruction)	-- TESTSET
    local stack = stack
    local B = stack[instruction.B]

    if (not not B) == (instruction.C == 0) then
        IP = IP + 1
    else
        stack[instruction.A] = B
    end
end,
[28] = function(instruction)	-- CALL
    local A = instruction.A;
    local B = instruction.B;
    local C = instruction.C;
    local stack = stack;
    local args, results;
    local limit, loop

    args = {};
    if B ~= 1 then
        if B ~= 0 then
            limit = A+B-1;
        else
            limit = top
        end

        loop = 0
        for i = A+1, limit do
            loop = loop + 1
            args[loop] = stack[i];
        end

        limit, results = handle_return(stack[A](unpack(args, 1, limit-A)))
    else
        limit, results = handle_return(stack[A]())
    end

    top = A - 1

    if C ~= 1 then
        if C ~= 0 then
            limit = A+C-2;
        else
            limit = limit+A
        end

        loop = 0;
        for i = A, limit do
            loop = loop + 1;
            stack[i] = results[loop];
        end
    end
end,
[29] = function (instruction)	-- TAILCALL
    local A = instruction.A;
    local B = instruction.B;
    local C = instruction.C;
    local stack = stack;
    local args, results;
    local top, limit, loop = top

    args = {};
    if B ~= 1 then
        if B ~= 0 then
            limit = A+B-1;
        else
            limit = top
        end

        loop = 0
        for i = A+1, limit do
            loop = loop + 1
            args[#args+1] = stack[i];
        end

        results = {stack[A](unpack(args, 1, limit-A))};
    else
        results = {stack[A]()};
    end

    return true, results
end,
[30] = function(instruction) -- RETURN
    --TODO: CLOSE
    local A = instruction.A;
    local B = instruction.B;
    local stack = stack;
    local limit;
    local loop, output;

    if B == 1 then
        return true;
    end
    if B == 0 then
        limit = top
    else
        limit = A + B - 2;
    end

    output = {};
    local loop = 0
    for i = A, limit do
        loop = loop + 1
        output[loop] = stack[i];
    end
    return true, output;
end,
[31] = function(instruction)	-- FORLOOP
    local A = instruction.A
    local stack = stack

    local step = stack[A+2]
    local index = stack[A] + step
    stack[A] = index

    if step > 0 then
        if index <= stack[A+1] then
            IP = IP + instruction.sBx
            stack[A+3] = index
        end
    else
        if index >= stack[A+1] then
            IP = IP + instruction.sBx
            stack[A+3] = index
        end
    end
end,
[32] = function(instruction)	-- FORPREP
    local A = instruction.A
    local stack = stack

    stack[A] = stack[A] - stack[A+2]
    IP = IP + instruction.sBx
end,
[33] = function(instruction)	-- TFORLOOP
    local A = instruction.A
    local B = instruction.B
    local C = instruction.C
    local stack = stack

    local offset = A+2
    local result = {stack[A](stack[A+1], stack[A+2])}
    for i = 1, C do
        stack[offset+i] = result[i]
    end

    if stack[A+3] ~= nil then
        stack[A+2] = stack[A+3]
    else
        IP = IP + 1
    end
end,
[34] = function(instruction)	-- SETLIST
    local A = instruction.A
    local B = instruction.B
    local C = instruction.C
    local stack = stack

    if C == 0 then
        error("NYI: extended SETLIST")
    else
        local offset = (C - 1) * 50
        local t = stack[A]

        if B == 0 then
            B = top
        end
        for i = 1, B do
            t[offset+i] = stack[A+i]
        end
    end
end,
[35] = function(instruction)	-- CLOSE
    io.stderr:write("NYI: CLOSE")
    io.stderr:flush()
end,
[36] = function(instruction)	-- CLOSURE
    local proto = prototypes[instruction.Bx]
    local instructions = instructions
    local stack = stack

    local indices = {}
    local new_upvals = setmetatable({},
        {
            __index = function(t, k)
                local upval = indices[k]
                return upval.segment[upval.offset]
            end,
            __newindex = function(t, k, v)
                local upval = indices[k]
                upval.segment[upval.offset] = v
            end
        }
    )
    for i = 1, proto.upvalues do
        local movement = instructions[IP]
        if movement.opcode == 0 then -- MOVE
            indices[i-1] = {segment = stack, offset = movement.B}
        elseif instructions[IP].opcode == 4 then -- GETUPVAL
            indices[i-1] = {segment = upvalues, offset = movement.B}
        end
        IP = IP + 1
    end

    local _, func = create_wrapper(proto, new_upvals)
    stack[instruction.A] = func
end,
[37] = function(instruction)	-- VARARG
    local A = instruction.A
    local B = instruction.B
    local stack, vararg = stack, vararg

    for i = A, A + (B > 0 and B - 1 or vararg_size) do
        stack[i] = vararg[i - A]
    end
end,
}
