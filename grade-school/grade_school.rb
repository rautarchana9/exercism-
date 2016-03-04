class School
  VERSION = 1
  attr_reader :db

  def initialize
    @db = Hash.new { [] }
  end

  def add(name, grade)
    if @db[grade].nil?
      @db[grade] = [name]
    else
      @db[grade] = (@db[grade] << name).sort
    end
  end

  def grade(level)
    @db[level]
  end

  def to_h
    Hash[@db.sort]
  end
end