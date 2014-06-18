# no te preocupes por esta linea, más tarde la vas a entender
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

begin
  require 'escalera'
rescue LoadError
  puts <<-INSTRUCTIONS
<<<<<<< HEAD
Dado un numero n, retornar un array con los valores de 1 a n
Avanzado: no usar iteradores.
=======
    Dado un numero n, retornar un array con los valores de 1 a n
    Avanzado: no usar iteradores.
>>>>>>> 7b41abd3fd6deb092d7adf001c21e369a5382b9e


INSTRUCTIONS
  raise
end

describe '#triangulo' do

  it 'escalera a 4' do
    expect(escalera 4).to eq [1, 2, 3, 4]
  end

  it 'escalera a 5' do
    expect(escalera 5).to eq [1, 2, 3, 4, 5]
  end

  it 'escalera a 6' do
    expect(escalera 6).to eq [1, 2, 3, 4, 5, 6]
  end

end
