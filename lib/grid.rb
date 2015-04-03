require "extract_subgroups"

class Grid
  ROW_SEPERATOR = "-"
  COLUMN_SEPERATOR = "|"

  def initialize(puzzle_string)
    self.puzzle_string = puzzle_string.strip
  end

  def call
    lines.map { |line| line_to_array(line) }
  end

  def columns
    call.transpose
  end

  def rows
    call
  end

  def subgroups
    ExtractSubgroups.call(rows)
  end

  protected

  attr_accessor :puzzle_string

  private

  def lines
    lines = puzzle_string.split("\n")
    lines.reject do |line|
      horizontal_seperator?(line)
    end
  end

  def line_to_array(line)
    line = clean_line(line)
    line.chars.map { |digit| Integer(digit) }
  end

  def horizontal_seperator?(line)
    line.include?(ROW_SEPERATOR)
  end

  def clean_line(line)
    line.gsub(COLUMN_SEPERATOR, "").gsub(" ", "")
  end
end
