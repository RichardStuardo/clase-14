registro = []

def add_person(array)
    persona = Hash.new
		puts 'Ingrese nombre'
		nombre = gets.chomp
		puts 'Ingrese edad'
		edad = gets.chomp
		puts 'Ingrese comuna'
		comuna = gets.chomp
		puts 'Ingrese género'
		genero = gets.chomp

	persona = {nombre: nombre, edad: edad.to_i, comuna: comuna,genero: genero }
	array.push(persona)
	print "Se ingreso el usuario: \n #{array}"
end

def edit_person(people)
  puts "Ingrese un nombre de una persona"
  nombre = gets.chomp
  elegido = people.select {|person| person[:nombre] == nombre}
  people.delete_if { |person| person[:nombre] == nombre }
  puts 'Estos son los valores actuales'
  puts elegido
  add_person(people)
end
def delete_person(people)
  puts "Ingrese un nombre de una persona que desea eliminar"
  nombre = gets.chomp
  elegido = people.delete_if { |person| person[:nombre] == nombre }
  puts 'Usuario eliminado'
  puts elegido
 
end

def view_array(array)
	puts array
	
end

puts 'Registro de alumnos'
puts	'press enter'

option = gets.chomp

while option != '10'
	puts
	puts 'Ingresar 1 los datos de una persona:'
	puts 'Ingresa 2 para editar los datos de la persona.'
	puts 'Ingresa 3 para eliminar una persona.'
	puts 'Ingresa 4 para mostrar la cantidad de personas ingresadas'
	puts 'Ingresa 5 para mostrar las comunas de todas las personas'
	puts 'Ingresa 6 para mostrar una lista con todas las personas que tengan entre 20 y 25 años'
	puts 'Ingresa 6 para mostrar la suma de las edades de todas las personas'
	puts 'Ingresa 6 para mostrar el promedio de las edades del grupo.'
	puts 'Ingresa 6 para mostrar dos listas de personas, una por cada género'
	puts 'Ingresa 10 para salir'

option = gets.chomp
puts case  option
		when '1'
			add_person(registro)
		when '2'
			edit_person(registro)
		when '3'
			delete_person(registro)
		when '4' 
			view_array(registro)
		when '5'

		when '6'

		when '7'
		
		when '8'
		
		when '9'
					
		else
			'Ingresa un número del 1 al 10'
	end
end	