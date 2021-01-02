local time = os.clock()

print("Generating Bytecode")
-- get bytecode
os.execute("luac -o \"luac.out\" \"input.lua\"")
local fb, code = io.open("luac.out", "rb"), ""
local fr = fb:read("*all")
for i = 1, #fr do
    local a = string.byte(fr, i, i)
    code = code .. "\\" .. a
end

fb:close()

print("Implementing Bytecode")
-- implement bytecode
local bytecode = "return(function(constants, ...)\nlocal BYTECODE=\""..code).."\"\n"

-- implement interpreter
local fl1, fl2, fl3, fl4 = io.open("lbi1.lua", "rb"), io.open("lbi2.lua", "rb"), io.open("lbi3.lua", "rb"), io.open("lbi4.lua", "rb")
local ftw = io.open("output.lua", "wb")
ftw:write(bytecode)
ftw:write(fl1:read("*all"))
fl1:close()
ftw:write(fl2:read("*all"))
fl2:close()
ftw:write(fl3:read("*all"))
fl3:close()
ftw:write(fl4:read("*all"))
fl4:close()

-- print obfuscation time
print("Took:",os.clock()-time.."s")