class Year
  VERSION = 1
  def self.leap?(year)
    @@year = year
    multiple_of?(4) && (!multiple_of?(100) || multiple_of?(400))
  end

  def self.multiple_of? (number)
    (@@year % number).zero?
  end
end
