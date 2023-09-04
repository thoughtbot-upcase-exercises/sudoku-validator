#!/usr/bin/env ruby
require_relative 'lib/validator'

filename = ARGV[0]

if filename.nil?
  puts "Usage: #{__FILE__} <sudoku_file>"
  exit 1
end

begin
  path = "spec/fixtures/#{filename.split(".")[0] + ".sudoku"}"
  file = File.read(path)
  result = Validator.validate(file)
  puts result
rescue Errno::ENOENT
  puts "File not found: #{filename}"
  exit 1
end
