# frozen_string_literal: true

require 'sinatra'
require 'sinatra/tailwind'
require 'sinatra/activerecord'

set :database_file, File.expand_path('config/database.yml', __dir__)

register Sinatra::Tailwind

class Transaction < ActiveRecord::Base
end

get '/' do
  erb :index
end
