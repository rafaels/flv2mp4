#!/usr/bin/env ruby

all_files =  Dir.entries(Dir.pwd).select {|filename| filename.match /.*\.(flv|mp4)/ }

flv_files = all_files.select {|filename| filename.match /.*\.flv/ }.map {|filename| filename[0..-5] }
mp4_files = all_files.select {|filename| filename.match /.*\.mp4/ }.map {|filename| filename[0..-5] }

flv_files_to_convert = flv_files - mp4_files

flv_files_to_convert.each do |filename|
  `flv2mp4 #{filename}.flv`
end
