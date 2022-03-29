# frozen_string_literal: true

class Discount < ApplicationRecord
  self.primary_key = :discount_id

  belongs_to :summary, primary_key: :summary_id
end
