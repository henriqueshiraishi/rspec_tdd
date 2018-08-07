require 'pessoa'

shared_examples 'sentimentos' do |sentimento|
  it "##{sentimento}!" do
    pessoa.send("#{sentimento}!")
    expect(pessoa.status).to eq "Sentindo-se #{sentimento.capitalize}!"
  end
end

describe Pessoa do
  subject(:pessoa) { described_class.new }

  it_behaves_like 'sentimentos', :feliz
  it_behaves_like 'sentimentos', :triste
  it_behaves_like 'sentimentos', :contente

  # it '#feliz!' do
  #   pessoa.feliz!
  #   expect(pessoa.status).to eq "Sentindo-se Feliz!"
  # end
  #
  # it '#triste!' do
  #   pessoa.triste!
  #   expect(pessoa.status).to eq "Sentindo-se Triste!"
  # end
  #
  # it '#contente!' do
  #   pessoa.contente!
  #   expect(pessoa.status).to eq "Sentindo-se Contente!"
  # end

end
