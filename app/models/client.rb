# frozen_string_literal: true

class Client < ApplicationRecord
  self.primary_key = :client_id

  has_many :summaries
  has_many :transactions, through: :summaries
  has_many :discounts, through: :summaries
end
