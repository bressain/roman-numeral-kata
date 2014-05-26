require 'minitest/autorun'
require_relative 'roman_numeral_calculator.rb'

describe RomanNumeralCalculator do
  describe 'when adding roman numbers' do
    it 'adds I and I to make II' do
      RomanNumeralCalculator.add('I', 'I').must_equal 'II'
    end

    it 'adds II and II to make IV' do
      RomanNumeralCalculator.add('II', 'II').must_equal 'IV'
    end

    it 'adds II and III to make V' do
      RomanNumeralCalculator.add('II', 'III').must_equal 'V'
    end

    it 'adds IV and I to make V' do
      RomanNumeralCalculator.add('IV', 'I').must_equal 'V'
    end

    it 'adds IX and I to make X' do
      RomanNumeralCalculator.add('IX', 'I').must_equal 'X'
    end

    it 'adds V and IV to make IX' do
      RomanNumeralCalculator.add('V', 'IV').must_equal 'IX'
    end

    it 'adds XL and X to make L' do
      RomanNumeralCalculator.add('XL', 'X').must_equal 'L'
    end

    it 'adds XXV and XV to make XL' do
      RomanNumeralCalculator.add('XXV', 'XV').must_equal 'XL'
    end

    it 'adds XC and X to make C' do
      RomanNumeralCalculator.add('XC', 'X').must_equal 'C'
    end

    it 'adds L and XL to make C' do
      RomanNumeralCalculator.add('L', 'XL').must_equal 'XC'
    end

    it 'adds CD and C to make D' do
      RomanNumeralCalculator.add('CD', 'C').must_equal 'D'
    end

    it 'adds CCC and LL to make CD' do
      RomanNumeralCalculator.add('CCC', 'LL').must_equal 'CD'
    end

    it 'adds CM and C to make M' do
      RomanNumeralCalculator.add('CM', 'C').must_equal 'M'
    end

    it 'adds D and CD to make CM' do
      RomanNumeralCalculator.add('D', 'CD').must_equal 'CM'
    end

    it 'adds CCCLXIX and DCCCXLV to make MCCXIV' do
      RomanNumeralCalculator.add('CCCLXIX', 'DCCCXLV').must_equal 'MCCXIV'
    end
  end
end
