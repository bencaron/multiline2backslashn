#!/usr/bin/env ruby
#
# Copyright 2013, Benoit Caron
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.


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


