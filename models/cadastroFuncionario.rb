class Funcionario
    include Mongoid::Document
    field :nome, type: String
    field :sobrenome, type: String
    field :cpf, type: String
    field :data_nascimento, type: Date
    field :telefone, type: String
  end  