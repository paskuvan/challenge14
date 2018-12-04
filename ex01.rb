a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

aumentar = a.each.map { |i| i + 1  }
puts aumentar, "\n"

convertir_float = a.map(&:to_f)
puts convertir_float, "\n"

convertir_string = a.map(&:to_s)
puts convertir_string, "\n"

menor = a.each.reject { |i| i < 5  }
puts menor, "\n"

mayor = a.each.select { |i| i > 1  }
puts mayor, "\n"

suma = a.inject(0) { |sum, x| sum + x } 
puts suma, "\n"

pares = a.group_by(&:even?) 
puts pares, "\n"

agrupar = a.group_by { |num| num > 6 } 
puts agrupar, "\n"



