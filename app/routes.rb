# frozen_string_literal: true

require 'sinatra/namespace'

register Sinatra::Namespace

set :show_exceptions, :after_handler

error ActiveRecord::RecordNotFound do
  halt 404, { message: 'Record Not Found' }.to_json
end

namespace '/api' do
  namespace '/v1' do
    get '/transactions' do
      @transactions = Transaction.all
      @transactions.to_json
      # erb :index
    end

    post '/transactions' do
      headers('Content-Type' => 'application/json')
      @transaction = Transaction.new(JSON.parse(request.body.read)).save
      @transaction.to_json
    end

    get '/transactions/:uuid' do
      @transaction = Transaction.find(params[:uuid])
      @transaction.to_json
    end
  end
end

not_found do
  halt 404, { message: 'Route Not Found' }.to_json
end
