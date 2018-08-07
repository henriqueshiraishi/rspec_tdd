require 'string_nao_vazia'

describe 'Matchers de Classes' do
  it 'be_instance_of' do
    str = StringNaoVazia.new
    expect(str).not_to be_instance_of(String)
    expect(str).to be_instance_of(StringNaoVazia)

    expect(10).to be_instance_of(Integer) # Exatamente a Classe
  end

  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)

    expect(10).to be_kind_of(Integer) # Pode ser por herança

  end

  it 'be_a / be_an' do
    str = StringNaoVazia.new

    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)

    expect(str).to be_an(String)
    expect(str).to be_an(StringNaoVazia)
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end
end
