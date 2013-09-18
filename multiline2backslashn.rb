#!/usr/bin/env ruby
#
#


if ARGV.length <= 0
  puts "Print files on one line, with line break replaced by \\n"
  puts "Each files is printed on it's own line."
end

ARGV.each do |f|
  lines = []
  File.open(f, 'r') do |f|
    f.readlines.each do |ln|
      lines << ln.chomp
    end
    lines << '' # force newline at end of file
  end 
  puts lines.join '\n'
end


