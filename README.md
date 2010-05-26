# YahooLocal

This is a Ruby wrapper for the Yahoo! Local Search API [http://developer.yahoo.com/search/local/V3/localSearch.html](http://developer.yahoo.com/search/local/V3/localSearch.html).

## Installation

As a gem:

    sudo gem install yahoo-local

As a plugin (in your Rails directory):

    script/plugin install git://github.com/phuphighter/yahoo_local.git
    
## Get a Yahoo API key

Sign up for a Yahoo API key: [http://developer.yahoo.com/wsregapp/](http://developer.yahoo.com/wsregapp/)
    
## Usage

### Gem config
    config.gem 'yahoo-local', :lib => 'yahoo_local'

### Instantiate a client

    >> yahoo = YahooLocal::Client.new(:api_key => 'your_api_key')
    
### or configure once

    >> YahooLocal.configure do |config|
    >>   config.api_key = 'your_api_key'
    >> end
    >> yahoo = YahooLocal::Client.new
    
#### Example

    >> yahoo.search(:query => "pizza", :zip => "90210", :results => 1)
    => {"ResultSet"=>{"firstResultPosition"=>"1", "totalResultsAvailable"=>"1571", "ResultSetMapUrl"=>"http://maps.yahoo.com/broadband/?q1=Beverly+Hills%2C+CA+90210&tt=pizza&tp=1", "Result"=>{"MapUrl"=>"http://maps.yahoo.com/maps_result?q1=231+N+Beverly+Dr+Beverly+Hills+CA&gid1=31216257", "Distance"=>"1.87", "Longitude"=>"-118.3998", "City"=>"Beverly Hills", "Url"=>"http://local.yahoo.com/info-31216257-pizza-rustica-beverly-hills", "Title"=>"Pizza Rustica", "Latitude"=>"34.067488", "Phone"=>"(310) 550-7499", "id"=>"31216257", "Categories"=>{"Category"=>{"id"=>"96926243", "content"=>"Pizza"}}, "BusinessUrl"=>"http://www.pizzarusticala.com/", "ClickUrl"=>"http://local.yahoo.com/info-31216257-pizza-rustica-beverly-hills", "Rating"=>{"TotalReviews"=>"3", "AverageRating"=>"5", "TotalRatings"=>"4", "LastReviewIntro"=>"Rustica but good!", "LastReviewDate"=>"1158242113"}, "Address"=>"231 N Beverly Dr", "State"=>"CA", "BusinessClickUrl"=>"http://www.pizzarusticala.com/"}, "totalResultsReturned"=>"1"}}

## Copyright

Contact me if you have any suggestions and feel free to fork it!

Copyright (c) 2009 Johnny Khai Nguyen, released under the MIT license
