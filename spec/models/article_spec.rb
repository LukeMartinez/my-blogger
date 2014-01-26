require 'spec_helper'

describe Article do

  it "is not valid without a title and body" do
    article = Article.create(title: "hey")
    article2 = Article.create(title: "hey", body: "this is a body")
    expect(article).to_not be_valid
    expect(article2).to be_valid
  end

end
