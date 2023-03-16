function CodeBlock(cb)
  if cb.classes:includes('python') then
    local randName = string.char(
      math.random(97,122), math.random(97,122),
      math.random(97,122), math.random(97,122),
      math.random(97,122),math.random(97,122)
    )
    local name = "_" .. randName .. "_black_formatted.py" 
    local f = io.open(name, 'w+b')
    f:write(cb.text)
    f:close()
    local formatted = io.popen("black " .. name)
    formatted:close()
    local formatted_file = io.open(name, 'r')
    local formatted_content = formatted_file:read("*all")
    formatted_file:close()
    os.remove(name)
    cb.text = formatted_content
    return cb
  end
end