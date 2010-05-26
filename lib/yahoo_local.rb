# Yahoo-local
require 'rubygems'
gem 'httparty'
require 'httparty'

directory = File.expand_path(File.dirname(__FILE__))

module YahooLocal
  
  # create config/initializers/yahoo_local.rb
  # 
  # YahooLocal.configure do |config|
  #   config.api_key = 'api_key'
  # end
  # client = YahooLocal::Client.new
  #
  # or
  #
  # YahooLocal.api_key = 'api_key'
  #
  # or
  #
  # YahooLocal::Client.new(:api_key => 'api_key')
  
  def self.configure
    yield self
    true
  end

  class << self
    attr_accessor :api_key
  end
  
end

require File.join(directory, 'yahoo_local', 'client')
