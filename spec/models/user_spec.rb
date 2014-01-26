require 'spec_helper'

describe User do 

  it "exists" do
    expect(User.new).to be_an_instance_of User
  end

  it "has a username" do
    User.create(username: "luke")
  end

  it "is not valid without a username" do
    user = User.new
    expect(user).to_not be_valid
  end

  it "is not valid without unique username" do
    user1 = User.create(username: "luke")
    user2 = User.create(username: "luke")
    expect(user1).to be_valid
    expect(user2).to_not be_valid
  end 



end
