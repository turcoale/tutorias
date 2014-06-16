# -*- coding: utf-8 -*-
# no te preocupes por esta linea, más tarde la vas a entender
$LOAD_PATH.unshift File.expand_path('../../../lib', __FILE__)

require "minitest/autorun"

begin
  require 'string_to_a'
rescue LoadError
  puts <<-INSTRUCTIONS
    Escribir el método foo para la clase String, de forma que String.new.foo retorne el string “foo”

INSTRUCTIONS
  raise
end

describe '#string_foo' do

  it 'return a foo string' do
    String.new.foo.must_equal "foo"
  end

end
