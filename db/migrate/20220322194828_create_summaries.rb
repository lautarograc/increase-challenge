class CreateSummaries < ActiveRecord::Migration[6.1]
  def change
    create_table :summaries do |t|

      t.timestamps
    end
  end
end
