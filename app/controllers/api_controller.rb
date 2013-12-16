class ApiController < ApplicationController

  def index
    i =1
    @setlistfm_data = []
    while i <= 115 do
      @setlistfm_data << HTTParty.get("http://api.setlist.fm/rest/0.1/artist/6faa7ca7-0d99-4a5e-bfa6-1fd5037520c6/setlists.json?p=1")
      # @setlistfm_data << page
      i += 1
    end

    File.open("app/assets/data/setlistfm.txt", "w") do |file|
    file.puts @setlistfm_data
    end
  end

end
