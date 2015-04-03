class ValidateSequences
  def self.call(sequences)
    sequences.all? do |sequence|
      sequence.reject {|e| e == 0}.uniq == sequence.reject {|e| e == 0 }
    end
  end
end
