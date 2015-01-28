require 'maclight'
require 'net/http'
require 'json'


# Turn both LEDs on
token = '<<--YOUR TOKEN HERE-->'

result = Net::HTTP.get(URI.parse("https://api.github.com/notifications?access_token=#{token}"))

MacLight.capslock(JSON.parse(result).length > 0)
