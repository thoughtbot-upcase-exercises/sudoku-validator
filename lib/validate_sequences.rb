class ValidateSequences
  def self.call(*args)
    new(*args).call
  end

  def initialize(sequences)
    self.sequences = sequences
  end

  def call
    sequences.all? do |sequence|
      constains_no_duplicates?(sequence)
    end
  end

  protected

  attr_accessor :sequences

  private

  def constains_no_duplicates?(sequence)
    without_zeros(sequence).uniq == without_zeros(sequence)
  end

  def without_zeros(sequence)
    sequence.reject {|e| e == 0}
  end
end
