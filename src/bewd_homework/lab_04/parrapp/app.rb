require 'sinatra'

 get '/' do
   @say = params[:say]
   erb :index

 end


 post '/parrot' do
   if @say.empty?
     redirect '/'
   end
  erb :parrot
end
