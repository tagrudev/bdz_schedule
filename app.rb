require 'sinatra'
require 'bdz'
require 'json'

get '/' do
  "Created by appsbakery @ github"
end

get '/search' do
  content_type :json
  client = Bdz::Client.new
  client.search(:ot => "#{params[:ot]}", :do => "#{params[:do]}").collect! {|train| train.as_json}.to_json
end
