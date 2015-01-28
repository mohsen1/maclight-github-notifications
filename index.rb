#!/usr/bin/env ruby

require 'maclight'
require 'net/http'
require 'json'

token = File.read('./token.secret')


while true
  puts 'fetching...'

  result = Net::HTTP.get(URI.parse("https://api.github.com/notifications?access_token=#{token}"))
  n = JSON.parse(result).length
  status = (n > 0)

  puts "you have #{n} notifications"

  # Only change the status of caps lock when the new status is different from the current status
  if (MacLight.capslock() != status) then

    # Turn caps lock LEDs on if there is Github notifications
    puts "turning #{status ? 'on' : 'off'} caps lock light"
    MacLight.capslock(status)
  end

  sleep 15
end
