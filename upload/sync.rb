#! /usr/bin/env ruby

address = '192.168.1.99'
#account = 'www-data'
account = 'eng'
#path = '/var/www/html'
path = '/home/eng'
src = 'homeinns'
command = "rsync #{ARGV} -k -rvz --delete --delete-excluded --exclude '.*' #{src} #{account}@#{address}:#{path}"
puts `#{command}`
