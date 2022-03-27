class CreateSummaries < ActiveRecord::Migration[6.1]
  def change
    create_table :summaries, id: false do |t|
      t.string :summary_id, primary_key: true
      t.string :client_id, null: false
      t.string :currency
      t.decimal :amount
      t.decimal :discount
      t.decimal :total_amount
      t.datetime :date
      t.timestamps
    end
    add_foreign_key :summaries, :clients, column: :client_id, primary_key: :client_id
    add_index :summaries, :client_id
  end
end
