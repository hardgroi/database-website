class ShoppingCart < ApplicationRecord
  belongs_to :isbn
  belongs_to :user
end
