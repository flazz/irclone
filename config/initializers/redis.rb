require 'redis'
require 'redis/objects'
require 'redis/list' # Redis::List needs this
require 'redis/set' # Redis::List needs this
#Redis::Objects.redis = Redis.new # this doesn't seem to work in this version
$redis = Redis.new
