require "luaScript/helper"

luaStr  = 65
 
luaStr2 = "are you ok!"
 
luaTable={age = 23,name="Himi",sex="男"}
 
function luaLogString(_logStr,_logNum,_logBool)
 
    print("Lua 脚本打印从C传来的字符串：",_logStr,_logNum,_logBool)
    return "call lua function OK"
end
 
function call_Cpp(_logStr,_logNum,_logBool)
    num,str = cppFunction(999,"I'm a lua string")
    print("从cpp函数中获得两个返回值：",num,str)
end

function call_other_cpp(_str1, _count)
	num = othercppFunciton(true)
	print("=====ccc:", num)
end

cclog("脚本hello开始运行... ")