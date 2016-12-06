class Book < ApplicationRecord
  self.primary_key = 'isbn'
  def self.search(search_params)
    where("title LIKE ?", "%#{search_params}%")
  end

end
