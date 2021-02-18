def welcome
  puts 'Descubra curiosidades sobre os países aqui'
end

def menu
  puts 'Digite 1 para cadastrar informações sobre os países'
  puts 'Digite 2 para ver as informações cadastradas dos países'
  puts 'Digite 3 para pesquisar informações sobre os países pelo nome do país'
  puts 'Digita 4 para sair'
  puts 'Escolha uma opção'
  gets.to_i
end

def insert_info
  puts 'Digite o nome do país'
  name = gets.chomp
  puts 'Digite o nome da moeda do país'
  currency = gets.chomp
  puts 'Digite o nome do gentílico do país'
  nationality = gets.chomp
  puts
  puts "País #{name} adicionado com sucesso"
  puts
  { name: name, currency: currency, nationality: nationality }
end

def print_info(countries)
  puts '=========== Informações sobre os países ==========='
  countries.each do |country|
    puts "País: #{country[:name]} Moeda: #{country[:currency]} Gentĺlico: #{country[:nationality]}"
  end
  puts
  puts '*** Cadastre pelo menos um país ***' if countries.empty?
  puts
end

welcome

countries = []

option = menu

loop do
  if option == 1
    countries << insert_info
  elsif option == 2
    print_info(countries)
  elsif option == 3
    puts 'Digite o nome do país que você quer pesquisar'
    search = gets.chomp
    searched_country = countries.find { |country| country[:name] == search }
    puts "Moeda: #{searched_country[:currency]} Gentílico: #{searched_country[:nationality]}"
  elsif option == 4
    break
  else
    puts 'Opção inválida!'
  end
  option = menu
end

puts ''
puts 'Obrigado por usar o cadastro de países'
