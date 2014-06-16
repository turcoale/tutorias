# -*- coding: utf-8 -*-
# no te preocupes por esta linea, más tarde la vas a entender
$LOAD_PATH.unshift File.expand_path('../../../lib', __FILE__)

require "minitest/autorun"

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

  it 'returns an instance of Triangulo' do
    Triangulo.new(1, 2, 3).must_be_instance_of Triangulo
  end

  it 'triangulo valid should be true when sizes are 1, 2 and 3' do
    Triangulo.new(1, 2, 3).must_be :valid?
  end

  it 'triangulo valid should be false when sizes are 1, 2 and 8' do
    Triangulo.new(1, 2, 8).wont_be :valid?
  end

end
