require 'test_helper'

class YahooLocalTest < Test::Unit::TestCase
  
  context "Yahoo Local API" do
    setup do
      @client = YahooLocal::Client.new(:appid => 'wtf')
    end
    
    context "and searching for a place" do
      should "find a specific place" do
        stub_get("http://local.yahooapis.com/LocalSearchService/V3/localSearch?query=pizza&zip=90210&results=1&output=json&appid=wtf", "search.json")
        search_result = @client.search(:query => "pizza", :zip => "90210", :results => 1)
        search_result["ResultSet"]["Result"]["Title"].should == "California Pizza Kitchen"
        search_result["ResultSet"]["Result"]["City"].should == "Beverly Hills"
      end
    end
  end
  
end
