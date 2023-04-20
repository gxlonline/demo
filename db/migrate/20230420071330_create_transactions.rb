class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :from, index: true
      t.string :to, index: true
      t.integer :number
      t.string :hash, index: true

      t.timestamps
    end
  end
end
