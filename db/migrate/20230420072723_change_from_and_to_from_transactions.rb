class ChangeFromAndToFromTransactions < ActiveRecord::Migration[7.0]
  def change
    remove_column :transactions, :from
    remove_column :transactions, :to
    add_reference :transactions, :from, foreign_key: { to_table: :accounts }
    add_reference :transactions, :to, foreign_key: { to_table: :accounts }
  end
end
