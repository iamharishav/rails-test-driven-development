require 'rails_helper'

RSpec.describe Article, type: :model do
  
  before do
  	user = FactoryGirl.create(:user)
  	@article = FactoryGirl.create(:article, :user => user)
  end

  it "Should have name" do
  	@article.title = ""
  	expect(@article).not_to be_valid
  end

  it "Should have name" do
  	@article.title = "title of the article"
  	expect(@article).to be_valid
  end

end
