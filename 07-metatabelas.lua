-- Tutorial de Metatables: https://www.youtube.com/watch?v=44Aemp2A-2E

x = {value = 5}
z = {value = 10}

mt = {
  __add = function (a, b) -- "add" event handler
    return { value = a.value + b.value }
  end
}

setmetatable(x, mt) -- mt é a metatabela de x
setmetatable(z, mt) -- mt é a metatabela de x
y = x + z

print(y.value)