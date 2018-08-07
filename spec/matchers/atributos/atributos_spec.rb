require 'pessoa'

describe 'Matchers de Atributos' do
  before(:each) { puts ">>>>>>>> ANTES DE CADA TESTE" }
  after(:each) { puts ">>>>>>>> DEPOIS DE CADA TESTE" }
  around(:each) do |t|
    puts "AROUND - ANTES"
    t.run # RODA O TESTE
    puts "AROUND - DEPOIS"
  end

  subject(:subject) { Pessoa.new }

  it 'have_attributes' do
    subject.nome = 'Henrique'
    subject.idade = 21
    expect(subject).to have_attributes(nome: a_string_starting_with('H'), idade: (a_value >= 21))
  end

  it 'have_attributes' do
    subject.nome = 'Jose'
    subject.idade = 25
    expect(subject).to have_attributes(nome: a_string_starting_with('J'), idade: (a_value >= 21))
  end

end
