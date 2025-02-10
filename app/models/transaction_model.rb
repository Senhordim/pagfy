# frozen_string_literal: true

require 'sinatra/activerecord'

class Transaction < ActiveRecord::Base
  self.primary_key = :uuid

  before_create :generate_uuid

  private

  def generate_uuid
    self.uuid ||= SecureRandom.uuid
  end
end
