class RomanNumeralCalculator
  @@replacements = {'IIIII'=>'V', 'VV'=>'X', 'XXXXX'=>'L', 'LL'=>'C', 'CCCCC'=>'D', 'DD'=>'M', 'DCCCC'=>'CM',
                    'CCCC'=>'CD', 'LXXXX'=>'XC', 'XXXX'=>'XL', 'VIIII'=>'IX', 'IIII'=>'IV'}
  @@uncompacts = {'IV'=>'IIII', 'IX'=>'VIIII', 'XL'=>'XXXX', 'XC'=>'LXXXX', 'CD'=>'CCCC', 'CM'=>'DCCCC'}
  @@number_order = 'MDCLXVI'

  def self.add(x, y)
    concatenated = uncompact(x) + uncompact(y)
    concatenated = sort_numbers concatenated
    compact(concatenated)
  end

  private

  def self.uncompact(number)
    @@uncompacts.each do |orig,uncompact|
      number = number.sub orig, uncompact
    end
    number
  end

  def self.sort_numbers(number)
    number.chars.sort do |a,b|
      @@number_order.index(a) <=> @@number_order.index(b)
    end.join('')
  end

  def self.compact(number)
    @@replacements.each do |orig,compact|
      number.sub! orig, compact
    end
    number
  end
end
