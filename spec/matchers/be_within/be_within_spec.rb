RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12.0) }
  it { expect([11.6, 12.1, 12.4]).to all be_within(0.5).of(12.0) }
  it { expect(12.6).to be_not_within(0.5).of(12.0) }
end

# Verifica a margem de um numero, no exemplo:
# be_within(0.5) é a quantidade de margem de um determinado numero
# of(12) é o determinado numero que é centralizado na margem

# Delta 0.5 - Ou seja, margem de 0.5 para cima e para baixo a partir do 12
# 11.5 - 11.6 - 11.7 - 11.8 - 11.9 - (12) - 12.1 - 12.2 - 12.3 - 12.4 - 12.5
