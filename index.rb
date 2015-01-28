require 'maclight'
require 'net/http'
require 'json'

token = File.read('./token.secret')

while true
  result = Net::HTTP.get(URI.parse("https://api.github.com/notifications?access_token=#{token}"))

  # Turn both LEDs on if there is Github notifications
  MacLight.capslock(JSON.parse(result).length > 0)
  sleep 15
end
