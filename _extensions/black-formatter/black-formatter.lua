--[[
MIT License

Copyright (c) 2023 Shafayet Khan Shafee

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
]]--

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
    local formatted = io.popen("python -m black " .. name)
    formatted:close()
    local formatted_file = io.open(name, 'r')
    local formatted_content = formatted_file:read("*all")
    formatted_file:close()
    os.remove(name)
    cb.text = formatted_content
    return cb
  end
end