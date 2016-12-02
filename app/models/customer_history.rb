class CustomerHistory < ApplicationRecord
  belongs_to :user
  belongs_to :isbn
end
