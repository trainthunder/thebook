require 'rails_helper'

RSpec.describe Author, type: :model do
  it "can be add new author" do
    author = Author.create(name: "J.K. Rowling")

    expect(author).to be_valid
  end

  it "can't add new author without name" do
    author = Author.create(name: nil)

    expect(author).to be_invalid
  end

  it "can't add new author because anthor name is duplicate" do
    Author.create(name: "J.K. Rowling")

    duplicate_author = Author.new(name: "J.K. Rowling")

    expect(duplicate_author).to be_invalid
  end
end
