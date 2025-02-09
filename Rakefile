# frozen_string_literal: true

require 'sinatra/activerecord/rake'
require './app'

task :environment do
  ActiveRecord::Base.configurations = YAML.load_file('config/database.yml')
end
