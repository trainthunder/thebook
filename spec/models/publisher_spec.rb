require 'rails_helper'

RSpec.describe Publisher, type: :model do
  it "can be add new publisher" do
    publisher = Publisher.create(name: "Phoenix")

    expect(publisher).to be_valid
  end

  it "can't be add new publisher because name can't be blank" do
    publisher = Publisher.create(name: nil)

    expect(publisher).to be_invalid
  end

  it "can't be add new publisher because name can't dublicate" do
    Publisher.create(name: "Dex")
    dublicate_publisher = Publisher.new(name: "Dex")

    expect(dublicate_publisher).to be_invalid
  end
end
