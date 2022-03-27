class Client < ApplicationRecord
    self.primary_key = :client_id

    has_many :summaries

end
