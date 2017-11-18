require 'rails_helper'

describe Review do
  # タイトルがあれば有効な状態であること
  it "is valid with title" do
    review = Review.new(title: '桜台', content: '二郎')
    expect(review).to be_valid
  end

  it "is valid with content" do
    review = Review.new(title: '関内', content: '二郎')
    expect(review).to be_valid
  end

  #タイトルがなければ無効であること
  it "is invalid without a title" do
    review = Review.new
    expect(review).not_to be_valid
  end

  it "is invalid without a content" do
    review = Review.new
    expect(review).not_to be_valid
  end

end
