# Requer a biblioteca Mongoid para interagir com o MongoDB
require 'mongoid'

# Requer o arquivo 'cadastroFuncionario' que contém a definição do modelo Funcionario
require_relative 'models/cadastroFuncionario'

# Carrega a configuração do Mongoid do arquivo 'mongoid.yml' para o ambiente de desenvolvimento
Mongoid.load!('mongoid.yml', :development)

# Exibe uma mensagem de boas-vindas ao usuário
puts "Bem-vindo à Aplicação de Cadastro de Dados de Funcionários"
puts "Você pode inserir informações de funcionários abaixo. Digite 'sair' para finalizar a aplicação."

# Inicia um loop que continuará rodando até ser explicitamente interrompido
loop do
  # Solicita ao usuário que insira informações do funcionário e informa como sair
  puts "Digite as informações do funcionário (digite 'sair' para sair):"
 
  # Solicita o nome do funcionário
  print "Nome: "
  nome = gets.chomp

  # Verifica se o usuário digitou 'sair' e encerra o loop se verdadeiro
  break if nome.downcase == 'sair'

  # Solicita o sobrenome do funcionário
  print "Sobrenome: "
  sobrenome = gets.chomp

  # Solicita o CPF do funcionário
  print "CPF: "
  cpf = gets.chomp

  # Solicita a data de nascimento do funcionário
  print "Data de Nascimento (AAAA-MM-DD): "
  data_nascimento = Date.parse(gets.chomp)

  # Solicita o número de telefone do funcionário
  print "Número de Telefone: "
  telefone = gets.chomp

  # Cria um objeto Funcionario e o salva no banco de dados
  funcionario = Funcionario.create(nome: nome, sobrenome: sobrenome, cpf: cpf, data_nascimento: data_nascimento, telefone: telefone)
  
  # Informa ao usuário que o funcionário foi cadastrado com sucesso
  puts "Funcionário cadastrado com sucesso!"
  
  # Pergunta ao usuário se deseja continuar cadastrando ou sair
  puts "Deseja continuar cadastrando? (Digite 'sair' para encerrar ou pressione Enter para continuar)"
  resposta = gets.chomp
 
  # Encerra o loop se a resposta do usuário for 'sair'
  break if resposta.downcase == 'sair'
end