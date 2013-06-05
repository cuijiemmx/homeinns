#! /usr/bin/env ruby

address = 'eng.corp.sifang.com'
account = 'www-data'
dest = '/var/www/html/homeinns'
command = "rsync #{ARGV} -k -rvz --delete --delete-excluded --exclude '.*' upload/ #{account}@#{address}:#{dest}"
puts `#{command}`
