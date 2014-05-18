require 'minitest/autorun'
require_relative 'roman_numeral.rb'

describe RomanNumeral do
  describe 'when converting roman to arabic numbers' do
    it 'converts I to 1' do
      RomanNumeral.roman_to_arabic('I').must_equal 1
    end

    it 'converts V to 5' do
      RomanNumeral.roman_to_arabic('V').must_equal 5
    end

    it 'converts X to 10' do
      RomanNumeral.roman_to_arabic('X').must_equal 10
    end

    it 'converts L to 50' do
      RomanNumeral.roman_to_arabic('L').must_equal 50
    end

    it 'converts C to 100' do
      RomanNumeral.roman_to_arabic('C').must_equal 100
    end

    it 'converts D to 500' do
      RomanNumeral.roman_to_arabic('D').must_equal 500
    end

    it 'converts M to 1000' do
      RomanNumeral.roman_to_arabic('M').must_equal 1000
    end

    it 'converts III to 3' do
      RomanNumeral.roman_to_arabic('III').must_equal 3
    end

    it 'converts IV to 4' do
      RomanNumeral.roman_to_arabic('IV').must_equal 4
    end

    it 'converts XVII to 17' do
      RomanNumeral.roman_to_arabic('XVII').must_equal 17
    end

    it 'converts MCMLIV to 1954' do
      RomanNumeral.roman_to_arabic('MCMLIV').must_equal 1954
    end

    it 'converts MMXIV to 2014' do
      RomanNumeral.roman_to_arabic('MMXIV').must_equal 2014
    end
  end

  describe 'when converting arabic to roman numbers' do
    it 'is unable to convert 0 to anything' do
      RomanNumeral.arabic_to_roman(0).must_equal ''
    end

    it 'converts 1 to I' do
      RomanNumeral.arabic_to_roman(1).must_equal 'I'
    end

    it 'converts 4 to IV' do
      RomanNumeral.arabic_to_roman(4).must_equal 'IV'
    end

    it 'converts 5 to V' do
      RomanNumeral.arabic_to_roman(5).must_equal 'V'
    end

    it 'converts 9 to IX' do
      RomanNumeral.arabic_to_roman(9).must_equal 'IX'
    end

    it 'converts 10 to X' do
      RomanNumeral.arabic_to_roman(10).must_equal 'X'
    end

    it 'converts 40 to XL' do
      RomanNumeral.arabic_to_roman(40).must_equal 'XL'
    end

    it 'converts 50 to L' do
      RomanNumeral.arabic_to_roman(50).must_equal 'L'
    end

    it 'converts 90 to XC' do
      RomanNumeral.arabic_to_roman(90).must_equal 'XC'
    end

    it 'converts 100 to C' do
      RomanNumeral.arabic_to_roman(100).must_equal 'C'
    end

    it 'converts 400 to CD' do
      RomanNumeral.arabic_to_roman(400).must_equal 'CD'
    end

    it 'converts 500 to D' do
      RomanNumeral.arabic_to_roman(500).must_equal 'D'
    end

    it 'converts 900 to CM' do
      RomanNumeral.arabic_to_roman(900).must_equal 'CM'
    end

    it 'converts 1000 to M' do
      RomanNumeral.arabic_to_roman(1000).must_equal 'M'
    end

    it 'converts 3 to III' do
      RomanNumeral.arabic_to_roman(3).must_equal 'III'
    end

    it 'converts 4 to IV' do
      RomanNumeral.arabic_to_roman(4).must_equal 'IV'
    end

    it 'converts 17 to XVII' do
      RomanNumeral.arabic_to_roman(17).must_equal 'XVII'
    end

    it 'converts 1954 to MCMLIV' do
      RomanNumeral.arabic_to_roman(1954).must_equal 'MCMLIV'
    end

    it 'converts 2014 to MMXIV' do
      RomanNumeral.arabic_to_roman(2014).must_equal 'MMXIV'
    end
  end
end
