# frozen_string_literal: true

class Summary < ApplicationRecord
  self.primary_key = :summary_id

  has_many :transactions
  has_many :discounts
  belongs_to :client, primary_key: :client_id
end
