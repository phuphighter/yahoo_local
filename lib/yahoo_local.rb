# Yahoo-local
require 'rubygems'
gem 'httparty'
require 'httparty'

directory = File.expand_path(File.dirname(__FILE__))

module YahooLocal
  
  # create config/initializers/yahoo_local.rb
  # 
  # YahooLocal.configure do |config|
  #   config.appid = 'appid'
  # end
  # client = YahooLocal::Client.new
  #
  # or
  #
  # YahooLocal.appid = 'appid'
  #
  # or
  #
  # YahooLocal::Client.new(:appid => 'appid')
  
  def self.configure
    yield self
    true
  end

  class << self
    attr_accessor :appid
  end
  
end

require File.join(directory, 'yahoo_local', 'client')
