require 'redis'

#Redis.current = Redis.new(url: ENV["REDIS_URL"])
$redis = Redis.new(url: ENV["REDIS_URL"])