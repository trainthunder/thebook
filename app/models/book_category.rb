class BookCategory < ApplicationRecord
  belongs_to :book
  belongs_to :category

  validates :book_id, presence: true
  validates :category_id, presence: true
  validates :book_id, uniqueness: { scope: :category_id }
end
