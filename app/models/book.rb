class Book < ApplicationRecord

  def self.search(search_params)
    where("title LIKE ?", "%#{search_params}%")
  end

end
