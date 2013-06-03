#! /usr/bin/env ruby

address = 'eng.corp.sifang.com'
account = 'www-data'
path = '/var/www/html'
src = 'homeinns'
command = "rsync #{ARGV} -k -rvz --delete --delete-excluded --exclude '.*' #{src} #{account}@#{address}:#{path}"
puts `#{command}`
