class Order < ApplicationRecord
  has_one :invoice
  belongs_to :user
  belongs_to :product
end
