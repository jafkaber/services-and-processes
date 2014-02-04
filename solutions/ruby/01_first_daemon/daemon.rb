#!/usr/bin/env ruby 
# 
#daemon.rb

require 'tempfile'

puts 'About to demonize'

Process.daemon
log=Tempfile.new('daemon.log')

loop do
        log.puts "I'm a daemon doing daemon things"
        log.flush
        sleep 5
end

