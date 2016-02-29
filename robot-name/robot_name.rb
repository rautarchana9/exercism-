class Robot
  attr_reader :name
  def initialize
    @name = '%s%03d' % [(0...2).map { ('A'..'Z').to_a[rand(26)] }.join, rand(100)]
  end
  def reset
    initialize
  end
end