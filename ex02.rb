nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

nombre_min = nombres.map(&:downcase)
puts nombre_min, "\n"

nombre_p = nombres.select {|nombre| nombre[0] = 'P'} 
puts nombre_p, "\n"

nombre_letra = nombres.map(&:length) 
puts nombre_letra, "\n"

nombre_vocal = nombres.map{ |nombre| nombre.gsub(/[aeiou]/, '') } 
puts nombre_vocal