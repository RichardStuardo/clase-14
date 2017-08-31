nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

#  Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método
# .select
a = nombres.select{ |k| k.size > 5}
puts  a

# Utilizando .map crear una arreglo con los nombres en minúscula.
b = nombres.map(&:downcase) 
p b

# Utilizando .select para crear un arreglo con todos los nombres que empiecen con P

c = nombres.select{ |e| e[0] == "P"}
p c

#  Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada
# nombre.

d = nombres.map(&:length)
p d

# Utilizando .map y .gsub eliminar las vocales de todos los nombres 

e = nombres.map{|e| e.gsub(/[aeiouAEIOU]/, '')}
p e