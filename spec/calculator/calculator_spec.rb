require 'calculator'

describe Calculator, "Sobre a Calculadora" do

  # subject(:subject) { described_class.new(1,2,4,5) }

  context "#sum" do
    it "with negative and positive numbers" do
      result = subject.sum(-5,7)
      expect(result).to eql(2)
      expect(result).not_to eql(nil)
    end

    it "with positive numbers" do
      result = subject.sum(5,7)
      expect(result).to eql(12)
      expect(result).not_to eql(nil)
    end

    it "with negative numbers" do
      result = subject.sum(-5,-7)
      expect(result).to eql(-12)
      expect(result).not_to eql(nil)
    end

    # xit "Teste implementado mas pendente" do
    #   result = subject.sum(100,100)
    #   expect(result).to eql(200)
    # end

    # it "Teste pendente"
  end

  context '#div' do
    it 'divide by 0' do
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3,0)}.to raise_error('divided by 0')
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError,'divided by 0')
      expect{subject.div(3,0)}.to raise_error(/divided/)
    end
  end

end

# subject - Se refere a classe que o teste está descrevendo, que no caso,
# é a classe Calculator na linha 3. Logo nos teste, quando escrevemos:
#   subject.sum(-5,7), equivale a:
#   calc = Calculator.new
#   calc.sum(-5,7)

# Podemos utilizar utlizar a linha 5 para alterar o nome do 'subject', que
# no caso, está alterano para :calc.
