require 'pessoa'

describe 'Matchers de Atributos' do
  # before(:each) { puts ">>>>>>>> ANTES DE CADA TESTE" }
  # subject(:subject) { Pessoa.new }

  let(:subject) { Pessoa.new }

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
