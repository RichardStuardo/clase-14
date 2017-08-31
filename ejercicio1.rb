 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
#Utilizando map aumentar el valor de cada elemento del array en 1.
b = a.map{|e| e + 1}
p b
#Utilizando map convertir todos los valores a float

c = a.map{|e| e.to_f}

print c
puts
#Utilizando map convertir todos los valores a string.

d = a.map{|e| e.to_s}
print d

#Utilizando reject descartar todos los elementos menores a 5 en el array.

e = a.reject{|e| e < 5}
puts
p e

#Utilizando select descartar todos los elementos mayores a 5 en el array.

f = a.select{|e| e < 5}
puts
p f
#Utilizando inject obtener la suma de todos los elementos del array.
g = a.inject{|sum, e| sum + e }
puts
p g

#Utilizando group_by agrupar todos los números por paridad (si son pares, es un
#grupos, si son impares es otro grupo)
 h = a.group_by{|e| e.even?}
puts
p h

#Utilizando group_by agrupar todos los números mayores y menores que 6.
 i = a.group_by{|e| e < 6}
puts
p i
