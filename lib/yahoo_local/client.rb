module YahooLocal
  
  class Client
    include HTTParty
    base_uri "http://local.yahooapis.com/LocalSearchService/V3"
    format :json
        
    attr_reader :appid
                
    def initialize(options={})
      @appid = options[:appid] || YahooLocal.appid
    end

    def search(options={})
      response = self.class.get('/localSearch', :query => options.merge(self.default_options))
    end
    
    protected
    
    def default_options
      {:appid => @appid, :output => "json"}
    end

  end
end