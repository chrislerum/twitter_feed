class HomeController < ApplicationController
  def index
    # in real world, wouldn't put these key values in the repo, would use env vars on the deployment server
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "AwMmcxdZu4blInJS3E8miaWsp"
      config.consumer_secret     = "yxYnLK1akSA7elP1vB1VTVA8b3L5MROQiemhKRvn605AX6OoS0"
      config.access_token        = "10435622-crdR1kjdqvGuT8vJ9blwf8cKsmrdxSj3UUhnfFyFK"
      config.access_token_secret = "nxfC9SjAZoz1M3cmbmxlGtp5tEihKlrJND0XUKSm4KKOn"
    end

    @tweets = client.search("to:taylorswift13 happy", result_type: "recent").take(100)
  end
end
