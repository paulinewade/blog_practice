require 'rails_helper'

RSpec.describe User, :type => :model do

  it "is valid with values given for first name & last name" do
    user = User.new(first_name: "anything", last_name: "anything")
    expect(user).to be_valid
  end

  it "is not valid without a first_name" do
    user = User.new(first_name: nil, last_name: "anything")
    expect(user).to_not be_valid
  end

  it "is not valid without a last_name" do
    user = User.new(first_name: "anything", last_name: nil)
    expect(user).to_not be_valid
  end

end
