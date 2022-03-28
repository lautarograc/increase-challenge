class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions, id: false do |t|
      t.string :transaction_id, primary_key: true
      t.string :summary_id, null: false
      t.decimal :amount
      t.string :approved
      t.timestamps
    end
    add_foreign_key :transactions, :summaries, column: :summary_id, primary_key: :summary_id
    add_index :transactions, :summary_id
  end
end
