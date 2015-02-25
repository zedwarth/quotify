#!/usr/bin/env ruby

filename = ARGV[0]
quoted_lines = []

# Read
File.open(filename, "r") do |f|
	f.each_line do |line|
		quoted_lines << '"' + line.chomp + '"' + "\n"
	end
end

# Write
output = File.open("output.txt", "w")
quoted_lines.each do |line|
	output << line
end
output.close
