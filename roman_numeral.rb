class RomanNumeral
  @@roman_to_arabic_conversions = {'I'=>1, 'V'=>5, 'X'=>10, 'L'=>50, 'C'=>100, 'D'=>500, 'M'=>1000}
  @@arabic_to_roman_conversions = {1000=>'M', 900=>'CM', 500=>'D', 400=>'CD', 100=>'C', 90=>'XC', 50=>'L', 40=>'XL', 10=>'X', 9=>'IX', 5=>'V', 4=>'IV', 1=>'I'}

  def self.roman_to_arabic(roman_numeral)
    result = 0
    prev_number = 1000
    roman_numeral.each_char do |c|
      current = @@roman_to_arabic_conversions[c]
      result += prev_number < current ? current - prev_number - prev_number : current
      prev_number = current
    end
    result
  end

  def self.arabic_to_roman(arabic_numeral)
    result = ''
    @@arabic_to_roman_conversions.each do |k,v|
      while arabic_numeral / k > 0
        arabic_numeral -= k
        result += v
      end
    end
    result
  end
end
