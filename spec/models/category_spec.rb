require 'rails_helper'

RSpec.describe Category, type: :model do
  it "can be add new category" do
    category = Category.create(name: "Fantasy")

    expect(category).to be_valid
  end

  it "can't be add new category without name" do
    category = Category.create(name: nil)

    expect(category).to be_invalid
  end

  it "can't be add new category if name is dublicate" do
    Category.create(name: "Fantasy")

    dublicate_category = Category.new(name: "Fantasy")

    expect(dublicate_category).to be_invalid
  end
end
