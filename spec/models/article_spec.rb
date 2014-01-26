require 'spec_helper'

describe Article do

  it "can have a title and a body" do
    article = Article.create(title: "hey", body: "body")
    expect(article.body).to eq("body")
    expect(article.title).to eq("hey")
  end

  it "is not valid without a title" do
    article = Article.create(body: "hey")
    expect(article).to_not be_valid
  end

  it "is not valid without a title and body" do
    article = Article.create(title: "hey")
    article2 = Article.create(title: "hey", body: "this is a body")
    expect(article).to_not be_valid
    expect(article2).to_not be_valid
  end
end
