namespace :db do
  desc 'Fill database'
  task :populate => :environment do
    load_data
  end
end

def load_data
  m = 1
  while m <= 115 do

    File.open("#{Rails.root}/app/assets/data/setlistfm#{m}.txt", "r") do |file|
      @setlist = file.read
  # h1 = JSON.parse(setlistfm_data)
end

@setlistfm_data = eval(@setlist)

begin
  k = 0
  while k < @setlistfm_data['setlists']['setlist'].length-1 do
    @event = Event.create(date:  @setlistfm_data['setlists']['setlist'][k]['@eventDate'],
     tour:   @setlistfm_data['setlists']['setlist'][k]['@tour'], 
     url:  @setlistfm_data['setlists']['setlist'][k]['url'],
     venue:  @setlistfm_data['setlists']['setlist'][k]['venue']['@name'],
     city:  @setlistfm_data['setlists']['setlist'][k]['venue']['city']['@name'],
     state:  @setlistfm_data['setlists']['setlist'][k]['venue']['city']['@state'],
     statecode:  @setlistfm_data['setlists']['setlist'][k]['venue']['city']['@stateCode'],
     lat:  @setlistfm_data['setlists']['setlist'][k]['venue']['city']['coords']['@lat'],
     long:  @setlistfm_data['setlists']['setlist'][k]['venue']['city']['coords']['@long'])

    if @setlistfm_data['setlists']['setlist'][k]['sets']['set'].instance_of?(Array)
      j = 0
      while j < @setlistfm_data['setlists']['setlist'][k]['sets']['set'].length-1 do

       i = 0
       while i < @setlistfm_data['setlists']['setlist'][k]['sets']['set'][j]['song'].length-1 do
         SongPerformance.create(title:  @setlistfm_data['setlists']['setlist'][k]['sets']['set'][j]['song'][i]['@name'], event_id: @event.id)

         if (@setlistfm_data['setlists']['setlist'][k]['sets']['set'][j]['song'][i]['cover'] != nil )
          SongPerformance.create(songwriter:  @setlistfm_data['setlists']['setlist'][k]['sets']['set'][j]['song'][i]['cover']['@name'], event_id: @event.id)
        end
        i += 1
      end
          SongPerformance.create(set:  j+1, event_id: @event.id)
      j += 1
    end
# SongPerformance.create(encore:  @setlistfm_data['setlists']['setlist'][k]['sets']['set'][j]['song']) 

else
  if @setlistfm_data['setlists']['setlist'][k]['sets'].instance_of?(String)
  else
    if @setlistfm_data['setlists']['setlist'][k]['sets']['set'].instance_of?(Hash)
      i = 0
      while i < @setlistfm_data['setlists']['setlist'][k]['sets']['set']['song'].length-1 do
        SongPerformance.create(title:  @setlistfm_data['setlists']['setlist'][k]['sets']['set']['song'][i]['@name'], event_id: @event.id)
        if (@setlistfm_data['setlists']['setlist'][k]['sets']['set']['song'][i]['cover'] != nil )
         SongPerformance.create(songwriter:  @setlistfm_data['setlists']['setlist'][k]['sets']['set']['song'][i]['cover']['@name'], event_id: @event.id)
       end
       i += 1
     end

   end
 end
end 

k += 1
end
rescue Exception => e
  puts "The exception is #{e.message}"
end

m += 1
end
end