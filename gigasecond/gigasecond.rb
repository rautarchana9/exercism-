class Gigasecond
  VERSION = 1 
  def self.from(day)
    day + gigasecond_in_days
  end

  def self.gigasecond_in_days
    10**9 
  end
end
