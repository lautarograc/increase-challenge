class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts, id: false do |t|
      t.string :discount_id, primary_key: true
      t.string :summary_id, null: false
      t.decimal :amount
      t.string :discount_type

      t.timestamps
    end
    add_foreign_key :discounts, :summaries, column: :summary_id, primary_key: :summary_id
    add_index :discounts, :summary_id
  end
end
