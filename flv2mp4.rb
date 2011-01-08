#!/usr/bin/env ruby

filename = ARGV[0]

raise ArgumentError, "Provide a filename" unless filename
raise ArgumentError, "#{filename} must be an flv file" unless filename.match /.*\.flv/
raise ArgumentError, "#{filename} doesn't exist" unless File.exists? filename

mp4_filename = filename[0..-4] + "mp4"

`ffmpeg -i #{filename} -ar 22050 #{mp4_filename}`
