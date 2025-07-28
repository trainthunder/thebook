require 'rails_helper'

RSpec.describe Book, type: :model do
  it "can be add new book with name, description, author and publisher" do
    author = Author.create(name: "J.K. Rowling")
    publisher = Publisher.create(name: "Bloomsbury")

    book = Book.new(name: "Harry Potter", description: "Wizarding world", author: author, publisher: publisher)

    expect(book).to be_valid
  end

  it "can't be add new book without name" do
    author = Author.create(name: "J.K. Rowling")
    publisher = Publisher.create(name: "Bloomsbury")

    book = Book.new(name: nil, description: "Wizarding world", author: author, publisher: publisher)

    expect(book).to be_invalid
  end

  it "can be add new book without description" do
    author = Author.create(name: "J.K. Rowling")
    publisher = Publisher.create(name: "Bloomsbury")

    book = Book.new(name: "Harry Potter", description: nil, author: author, publisher: publisher)

    expect(book).to be_valid
  end
end
