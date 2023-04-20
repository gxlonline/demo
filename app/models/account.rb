class Account < ApplicationRecord
  has_many :from_transactions, class_name: 'Transaction', foreign_key: 'from_id'
  has_many :to_transactions, class_name: 'Transaction', foreign_key: 'to_id'
end
