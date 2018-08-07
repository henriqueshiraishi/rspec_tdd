RSpec::Matchers.define_negated_matcher :an_array_excluding, :include

describe Array.new([1,2,3,4]), 'Array', :collection do
  it '#include' do
    expect(subject).to include 2
    expect(subject).to include 2,1
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly 1,4,2,3
  end

  it '#match_array' do
    expect(subject).to match_array [1,2,3,4]
  end

  it { expect(subject).to an_array_excluding 5 }
end

# OBS: O simbolo :collection é para agrupar por TAG os testes
# quando rodar o comando 'rspec', podemos rodar filtrando apenas
# aquela TAG, exemplo:

#   rspec . -t collection

# Que irá rodar todos aqueles que contém essa tag.
