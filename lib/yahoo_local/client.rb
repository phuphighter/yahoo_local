module YahooLocal
  
  class Client
    include HTTParty
    base_uri "http://local.yahooapis.com/LocalSearchService/V3"
        
    attr_reader :api_key
                
    def initialize(options={})
      @api_key = options[:appid] || YahooLocal.api_key
    end

    def search(options={})
      response = self.class.get('/localSearch', :query => options.merge(self.default_options))
    end
    
    protected
    
    def default_options
      {:appid => @api_key, :output => "json"}
    end

  end
end