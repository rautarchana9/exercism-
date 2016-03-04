class PhoneNumber
  attr_reader :number
  def initialize(numstring)
    @number = clean(numstring)
  end

  def clean(numstring)
    return '0000000000' if numstring.match(/[a-zA-Z]/)
    number = numstring.scan(/\d+/).join
    normalize(number)
  end

  def normalize(number)
    if is_valid?(number)
      number[/(\d{10})\z/, 1]
    else
      "0000000000"
    end
  end

  def is_valid?(number)
    return true if number.length == 10
    return true if number.length == 11 && number.start_with?('1')
    false
  end

  def area_code
    number[0..2]
  end

  def exchange_code
    number[3..5]
  end

  def subscriber_number
    number[6..9]
  end

  def to_s
    "(#{area_code}) #{exchange_code}-#{subscriber_number}"
  end
end