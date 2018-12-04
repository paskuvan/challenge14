def add_person(array)
  puts 'Ingresa nombre'
  name = gets.chomp
  puts 'Ingresa edad'
  age = gets.chomp
  puts 'Ingresa comuna'
  commune = gets.chomp
  puts 'Ingresa genero (Female/Male)'
  gender = gets.chomp

 array.push{nombre: name, edad: age_to_i, comuna: commune, genero: gender}
  print "Se ha ingresado el usuario: \n #{array}"
  puts
end


def edit_person(people)
  puts "Ingresa el nombre del alumno para editar"
  name = gets.chomp
  elegido = people.select{|person| person[:nombre] == name}
  people.delete_if{|person|person[:nombre] == name}
  puts"Estos son los valores de la persona elegida"
  puts elegido
  add_person (people)
end


def delete_person(people)
  puts 'Ingresa el nombre del alumno para eliminar'
  name = gets.chomp
  
  if elegido.length == 0
    puts "#{name} no existe"
  else
    elegido = people.delete_if{|person| person [:nombre] == name}
    puts "EL alumno #{eliminado} fue eliminado"
  end
  print people
end


def show_count(people)
  print "El curso tiene #{people.length} alumnos"
end



def commune_list
  comuna_array = people.map{|key, value|
  }
end


def range_age (people)
  people.select do |foo|
    puts foo[:nombre] if foo[:edad] >= 20 && foo[:edad] <= 25
  end
end


def sum_age(people)
  suma = num + people
  puts suma
end



def average_age(people)
  suma = array.inject{|sum, e| sum + e[:edad]}
  i = 0 
  array.each {i += 1}
  print "El promedio de las edades es #{sum}", "\n"
end



def show_gender(people)
array.select do |foo|
  if foo[:genero] == 'Female'
    puts "Los hombres son: #{foo[:nombre]}"
  else
    puts "Las mujeres son: #{foo[:nombre]}"
end
end
end



puts 'Ingresa una de estas opciones'
opcion = 0
while opcion != '10'
  puts 'Opcion 1: Agregar'
  puts 'Opcion 2: Editar'
  puts 'Opcion 3: Eliminar'
  puts 'Opcion 4: Muestra la cantidad de personas ingresadas'
  puts 'Opcion 5: Muestra las comunas de todas las personas'
  puts 'Opcion 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años'
  puts 'Opcion 7: Muestra la suma de las edades de todas las personas'
  puts 'Opcion 8: Muestra el promedio de las edades del grupo.'
  puts 'Opcion 9: Muestra dos listas de personas, una por cada género'
  puts 'Opcion 10: Salir'

  opcion = gets.chomp 

  puts case opcion
  when '1'
    add_person(list)
  when '2'
    edit_person(list)
  when '3'
    delete_person(list)
  when '4'
    show_count(list)
  when '5'
    commune_list(list)
  when '6'
    range_age(list)
  when '7'
  sum_age(list)
  when '8'
  average_age(list)
  when '9'
  show_gender(list)
  when '10'
  salida(list)
  else
    exit
  end
end