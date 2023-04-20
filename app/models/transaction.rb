class Transaction < ApplicationRecord
  has_many :transaction_tag_ships
  has_many :tags, through: :transaction_tag_ships
  belongs_to :from_account, class_name: 'Account', foreign_key: 'from_id'
  belongs_to :to_account, class_name: 'Account', foreign_key: 'to_id'
end
