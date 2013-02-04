#!/usr/bin/env ruby

DATA_DIR = "/media/storage/data"

Dir.foreach(DATA_DIR) do |dir|
   next if dir == '.' or dir == '..'
  `ln -s #{DATA_DIR}/#{dir} $HOME/#{dir}`
end
