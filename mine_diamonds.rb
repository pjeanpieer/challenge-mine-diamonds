# logica de programação

# 1 step definir o metodo
def mine_diamonds(string)
  # 2 step criar uma variavel vazia para almacenar o numero de diamantes
  counter_diamonds = 0
  # 3 step deletar tudos os pontos / areias
  string.delete!('.')
  # 4 lopping while para iterar dentro da cadeia de texto
  while string.include?('<>')
    # 5 almazenar na variavel vazia a quantidade de diamantes
    counter_diamonds += string.scan(/<>/).count
    string.gsub!('<>', '')
  end
  # 6 print o numero total de diamantes com uma interpolacao
  puts "Output: #{counter_diamonds}"
  puts "You've mined #{counter_diamonds} diamonds"
end

mine_diamonds('<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>')
