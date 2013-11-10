get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  # p params
  # @new_event = Event.create(params)
  # # if @new_event.save
  # redirect '/'
  # else

  # end
  #TODO IMPLEMENT ME
end

post '/events/create' do
  p params
  @new_event = Event.create(params)
  redirect '/'
  #TODO IMPLEMENT ME
end
