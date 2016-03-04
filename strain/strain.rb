class Array
  def keep
    result = []
    self.each do |element|
       if yield(element)
       	  result << element
       end
    end
    result
  end

  def discard
    result = []
    self.each do |element|
       if yield(element) == false	
       	  result << element
       end
    end
    result
  end
end