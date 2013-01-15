require 'sinatra'
require 'bdz'
require 'json'

get '/' do
  "Created by appsbakery @ github"
end

get '/search' do
  content_type :json
  client = Bdz::Client.new
  client.search({:from_station => "#{params[:from_station]}", :to_station => "#{params[:to_station]}", :date => "#{params[:date]}"}).collect! {|train| train.as_json}.to_json
end
