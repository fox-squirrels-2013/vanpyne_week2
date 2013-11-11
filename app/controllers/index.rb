############ http://edgeguides.rubyonrails.org/routing.html ###############

get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  erb :new_event
  #TODO IMPLEMENT ME
end

post '/events' do
  p params
  event = Event.create(params)
  if event.valid?
    redirect '/'
  else
    p event.errors.full_messages
    redirect '/events/new'
  end
  ###### use flash messages to print error messages to screen ########
  #TODO IMPLEMENT ME
end
