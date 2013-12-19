# i =1
  # setlistfm_data = []

  # while i <= 115 do
  #   @setlistfm_data = HTTParty.get("http://api.setlist.fm/rest/0.1/artist/6faa7ca7-0d99-4a5e-bfa6-1fd5037520c6/setlists.json?p=#{i}")

  #   File.open("app/assets/data/setlistfm#{i}.json", "w") do |file|
  #     file.puts @setlistfm_data
  #     file.close
  #     i += 1
  #   end
  # end

  # i =1
  #   # @setlistfm_data = []
  #   while i <= 115 do
  #     @setlistfm_data = HTTParty.get("http://api.setlist.fm/rest/0.1/artist/6faa7ca7-0d99-4a5e-bfa6-1fd5037520c6/setlists.json?p=#{i}")

  #     File.open("app/assets/data/setlistfm#{i}.txt", "w") do |file|
  #       file.puts @setlistfm_data
  #     file.close
  #     i += 1
  #     end

  #   end
  m = 1
  while m <= 115 do

File.open("setlistfm#{m}.txt", "r") do |file|
  @setlist = file.read
  # h1 = JSON.parse(setlistfm_data)
end

@setlistfm_data = eval(@setlist)

begin

  k = 0
while k < @setlistfm_data['setlists']['setlist'].length do
    puts
    puts

    puts @setlistfm_data['setlists']['setlist'][k]['@eventDate']
    puts @setlistfm_data['setlists']['setlist'][k]['@tour']
    puts @setlistfm_data['setlists']['setlist'][k]['url']
    puts @setlistfm_data['setlists']['setlist'][k]['venue']['@name']
    puts @setlistfm_data['setlists']['setlist'][k]['venue']['city']['@name']
    puts @setlistfm_data['setlists']['setlist'][k]['venue']['city']['@state']
    puts @setlistfm_data['setlists']['setlist'][k]['venue']['city']['@stateCode']
    puts @setlistfm_data['setlists']['setlist'][k]['venue']['city']['coords']['@lat']
    puts @setlistfm_data['setlists']['setlist'][k]['venue']['city']['coords']['@long']

    if @setlistfm_data['setlists']['setlist'][k]['sets']['set'].instance_of?(Array)
        j = 0
        while j < @setlistfm_data['setlists']['setlist'][k]['sets']['set'].length-1 do
           # puts @setlistfm_data['setlists']['setlist'][k]['sets']['set'][j]['@name']
           puts j+1

           i = 0
           while i < @setlistfm_data['setlists']['setlist'][k]['sets']['set'][j]['song'].length do
            puts @setlistfm_data['setlists']['setlist'][k]['sets']['set'][j]['song'][i]['@name']
            if (@setlistfm_data['setlists']['setlist'][k]['sets']['set'][j]['song'][i]['cover'] != nil )
                puts @setlistfm_data['setlists']['setlist'][k]['sets']['set'][j]['song'][i]['cover']['@name']
            end
            i += 1
           end
        j += 1
        end
    # puts @setlistfm_data['setlists']['setlist'][k]['sets']['set'][j]['song'] 

    else
        if @setlistfm_data['setlists']['setlist'][k]['sets'].instance_of?(String)
        else
          if @setlistfm_data['setlists']['setlist'][k]['sets']['set'].instance_of?(Hash)
            i = 0
            while i < @setlistfm_data['setlists']['setlist'][k]['sets']['set']['song'].length do
               puts @setlistfm_data['setlists']['setlist'][k]['sets']['set']['song'][i]['@name']
               if (@setlistfm_data['setlists']['setlist'][k]['sets']['set']['song'][i]['cover'] != nil )
                puts @setlistfm_data['setlists']['setlist'][k]['sets']['set']['song'][i]['cover']['@name']
               end
            i += 1
            end
          end
        end
    end 

k += 1
end
rescue Exception => e
  puts '#{e}'
end

m += 1
end



