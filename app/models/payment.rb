class Payment < ApplicationRecord
  belongs_to :shopping_cart
  belongs_to :user
end
