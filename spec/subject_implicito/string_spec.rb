require 'string_nao_vazia'

describe String do

  it 'Está vazia' do
    expect(subject).to eq ('')
    expect(subject).not_to eq ('Não sou vazio!')
  end

  describe StringNaoVazia do
    it 'Não está vazia' do
      expect(subject).to eq ('Não sou vazio!')
      expect(subject).not_to eq ('')
    end
  end
end
