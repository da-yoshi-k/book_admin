class Book < ApplicationRecord
  scope :costly, -> { where('price > ?', 300) }
  scope :written_about, ->(them) { where('name like ?', "%#{them}%") }
end
