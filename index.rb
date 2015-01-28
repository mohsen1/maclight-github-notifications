require 'maclight'
require 'net/http'
require 'json'

token = '<<--YOUR TOKEN HERE-->'
result = Net::HTTP.get(URI.parse("https://api.github.com/notifications?access_token=#{token}"))

# Turn both LEDs on if there is Github notifications
MacLight.capslock(JSON.parse(result).length > 0)
