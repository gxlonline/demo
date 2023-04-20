class TransactionTagShip < ApplicationRecord
  belongs_to :order, class_name: 'Transaction', foreign_key: 'transaction_id'
  belongs_to :tag
end
