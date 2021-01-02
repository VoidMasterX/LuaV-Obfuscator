
local function loop()
    local instructions = instructions
    local instruction, a, b
    
    while true do
        instruction = instructions[IP];
        IP = IP + 1
        a, b = opcode_funcs[instruction.opcode](instruction);
        if a then
            return b;
        end
    end
    end
    
    local debugging = {
    get_stack = function()
        return stack;
    end;
    get_IP = function()
        return IP;
    end
    };
    
    local function func(...)
    local local_stack = {};
    local ghost_stack = {};
    
    top = -1
    stack = setmetatable(local_stack, {
        __index = ghost_stack;
        __newindex = function(t, k, v)
            if k > top and v then
                top = k
            end
            ghost_stack[k] = v
        end;
    })
    local args = {...};
    vararg = {}
    vararg_size = select("#", ...) - 1
    for i = 0, vararg_size do
        local_stack[i] = args[i+1];
        vararg[i] = args[i+1]
    end
    
    environment = getfenv();
    IP = 1;
    local thread = coroutine.create(loop)
    local a, b = coroutine.resume(thread)
    
    if a then
        if b then
            return unpack(b);
        end
        return;
    else
        if advanced_debug then
            --TODO advanced debugging
        else
            --TODO error converting
            local name = cache.name;
            local line = cache.debug.lines[IP];
            local err  = b:gsub("(.-:)", "");
            local output = "";
    
            output = output .. (name and name .. ":" or "");
            output = output .. (line and line .. ":" or "");
            output = output .. b
            --[[
            output = ("%s (Instruction=%s)"):format(output,
                lua_opcode_names[select(2,debug.getlocal(loop,1, 1)).opcode+1])
            --]]
            error(output, 0);
        end
    end
    end
    
    return debugging, func;
    end
    
    local function load_bytecode(bytecode)
    local cache = decode_bytecode(bytecode);
    local _, func = create_wrapper(cache);
    return func;
    end
    
    return load_bytecode(BYTECODE)() end)({testvar0=0,testvar1=1,testvar2=2,testvar3=3})