class CreateTransactionTagShips < ActiveRecord::Migration[7.0]
  def change
    create_table :transaction_tag_ships do |t|
      t.references :transaction
      t.references :tag

      t.timestamps
    end
  end
end
