class Tag < ApplicationRecord
  has_many :transaction_tag_ships
  has_many :transactions, through: :transaction_tag_ships
end
