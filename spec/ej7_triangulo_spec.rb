# no te preocupes por esta linea, más tarde la vas a entender
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

begin
  require 'triangulo'
rescue LoadError
  puts <<-INSTRUCTIONS
    Dado 3 numeros decir si es o no es un triangulo.
    Para eso hacer una clase triangulo que reciba los 3 números en el initializer e implementar el método valid? que retorne true o false dependiendo si es o no un triángulo.


INSTRUCTIONS
  raise
end

describe '#triangulo' do

  it 'triangulo valid should be true when sizes are 1, 2 and 3' do
    expect(Triangulo.new(1, 2, 3).valid?).to eq true
  end

  it 'triangulo valid should be false when sizes are 1, 2 and 8' do
    expect(Triangulo.new(1, 2, 8).valid?).to eq false
  end
  
end
