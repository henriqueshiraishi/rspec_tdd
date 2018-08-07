require 'student'
require 'course'

describe 'Stub' do
  it '#has_finished' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)
    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end

  it 'Argumentos Dinâmicos' do
      student = Student.new

      allow(student).to receive(:foo) { |arg| arg == :hello ? "Olá" : arg == :hi ? "Hi" : 'Não Entendi' }

      expect(student.foo(:hello)).to eq 'Olá'
      expect(student.foo(:hi)).to eq 'Hi'
      expect(student.foo).to eq 'Não Entendi'
  end

  it 'Qualquer instância de classe' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:foo).and_return(true)

    expect(student.foo).to be_truthy
    expect(other_student.foo).to be_truthy
  end

  it 'Erros' do
    student = Student.new

    allow(student).to receive(:foo).and_raise(RuntimeError)

    expect{student.foo}.to raise_error(RuntimeError)
  end
end
