class BookPub < ApplicationRecord
  belongs_to :isbn
  belongs_to :publisher
end
