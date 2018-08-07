describe 'Test Double' do
  it 'name and password' do
    user = double('User')
    allow(user).to receive(:name).and_return('Henrique')
    allow(user).to receive(:password).and_return('secrets')

    expect(user.name).to eq 'Henrique'
    expect(user.password).to eq 'secrets'
  end

  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive(:name).and_return('Henrique')
    allow(user).to receive(:password).and_return('secrets')

    user.metodo_inexistente
    expect(user.name).to eq 'Henrique'
    expect(user.password).to eq 'secrets'
  end
end
