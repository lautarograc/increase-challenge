class Transaction < ApplicationRecord
    self.primary_key = :transaction_id

    belongs_to :summary, primary_key: :summary_id
end
