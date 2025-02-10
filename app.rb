# frozen_string_literal: true

require 'sinatra'
require 'sinatra/tailwind'
require 'sinatra/reloader'

require_relative 'app/models/transaction_model'

require_relative 'app/routes'

set :database_file, File.expand_path('config/database.yml', __dir__)

register Sinatra::Tailwind

register Sinatra::Reloader
