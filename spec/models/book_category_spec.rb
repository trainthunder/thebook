require 'rails_helper'

RSpec.describe BookCategory, type: :model do
  it "can be add category for book" do
    author = Author.create(name: "J.K. Rowling")
    publisher = Publisher.create(name: "Bloomsbury")
    book = Book.create(name: "Harry Potter", description: "Magic story", author: author, publisher: publisher)
    category = Category.create(name: "Fantasy")

    book_category = BookCategory.create(book: book, category: category)

    expect(book_category).to be_valid
  end

  it "can't be add without category" do
    author = Author.create(name: "J.K. Rowling")
    publisher = Publisher.create(name: "Bloomsbury")
    book = Book.create(name: "Harry Potter", description: "Magic story", author: author, publisher: publisher)

    book_category = BookCategory.create(book: book, category: nil)

    expect(book_category).to be_invalid
  end

  it "the book can't be add dublicated category" do
    author = Author.create(name: "J.K. Rowling")
    publisher = Publisher.create(name: "Bloomsbury")
    book = Book.create(name: "Harry Potter", description: "Magic story", author: author, publisher: publisher)
    category = Category.create(name: "Fantasy")

    BookCategory.create(book: book, category: category)
    duplicate_book_category = BookCategory.new(book: book, category: category)

    expect(duplicate_book_category).to be_invalid
  end
end
