class Complement
  VERSION = 3
  OPTIONS = {'A'=>'U', 'C'=>'G', 'G'=>'C', 'T'=>'A'}

  def self.of_dna(sequence)
    complement_sequence = ""
    sequence.each_char do |base|
      raise ArgumentError unless OPTIONS.keys.include? base
      complement_sequence << OPTIONS[base]
    end
    complement_sequence
  end
end
