#!/usr/bin/env ruby
#
# Copyright 2013, Benoit Caron
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.


if ARGV.length <= 0
  puts "Print files on one line, with line break marker (\\n) replaced by a actual \\n"
end

ARGV.each do |f|
  lines = []
  File.open(f, 'r') do |f|
    f.readlines.each do |ln|
      puts ln.gsub! /\\n/, "\n"
    end
  end
end
