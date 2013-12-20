class ApiController < ApplicationController
  require 'json'

  # def index
  #    File.open('app/assets/data/setlistfm1.txt', 'r') do |file|
  #    @setlistfm_data = file.read
  #     end
  # end

  # def index
  #   File.open('app/assets/data/setlistfm.txt', 'r') do |file|
  #   @setlistfm_data = JSON[file]
  #   end
  # end

  
  def index
    # i =1
    # # @setlistfm_data = []
    # while i <= 115 do
    #   @setlistfm_data = HTTParty.get("http://api.setlist.fm/rest/0.1/artist/6faa7ca7-0d99-4a5e-bfa6-1fd5037520c6/setlists.json?p=#{i}")

    #   File.open("app/assets/data/setlistfm#{i}.txt", "w") do |file|
    #     file.puts @setlistfm_data
    #   file.close
    #   i += 1
    #   end

    # end


  end

end
