require 'sinatra'
require_relative '../models/url'

get '/' do
  erb :index
end

post '/shorten' do
  url = URL.create(original_url: params[:original_url])
  @shortened_url = "#{request.base_url}/#{url.shortened_url}"
  erb :index
end

get '/:shortened_url' do
  url = URL.first(shortened_url: params[:shortened_url])
  if url
    redirect url.original_url
  else
    halt 404, "URL not found"
  end
end
