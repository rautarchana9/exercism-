class ETL
  def self.transform(old)
    score_card = {}
    old.each do |k, v|
      v.each {|element| score_card[element.downcase] = k}
    end
    score_card    
  end
end