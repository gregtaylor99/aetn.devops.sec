#!/usr/bin/env ruby

gem 'spidr'
require 'spidr'
require 'set'

unless ARGV.length == 2
  STDERR.puts "usage: #{$0} HOST FILE"
  exit -1
end

words = Set[]

Spidr.host(ARGV[0]) do |spidr|
  spidr.every_page do |page|
    if page.html?
      puts "[-] Scanning words from #{page.url}"

      words += page.doc.search('p').inner_text.split
    end
  end
end

File.open(ARGV[1],'w') do |file|
  words.each { |word| file.puts(word) }
end
