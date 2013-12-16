class ApiController < ApplicationController


  def index
    @setlistfm_data = http://api.setlist.fm/rest/0.1/artist/6faa7ca7-0d99-4a5e-bfa6-1fd5037520c6/setlists.json
  end

end
