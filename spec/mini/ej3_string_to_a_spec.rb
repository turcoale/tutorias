# -*- coding: utf-8 -*-
# no te preocupes por esta linea, más tarde la vas a entender
$LOAD_PATH.unshift File.expand_path('../../../lib', __FILE__)

require "minitest/autorun"

begin
  require 'string_to_a'
rescue LoadError
  puts <<-INSTRUCTIONS
    Escribir el método to_a para la clase String para que imprima el string como
    un array con un elemento para cada caracter del string.

INSTRUCTIONS
  raise
end

describe '#string_to_a' do

  it 'return a and array with word "some"' do
    "some".to_a.must_equal ["s","o","m", "e"]
  end

  it 'return a and array with word "hello"' do
    "hello".to_a.must_equal ["h","e","l", "l", "o"]
  end

end
