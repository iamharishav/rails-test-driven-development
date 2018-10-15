FactoryGirl.define do 
  factory :article do
  	user 
    title          "Title of the article"
    description    "Description of the article"
    "article[banner]" "#{Rails.root}/spec/support/images/image.png"
  end
end