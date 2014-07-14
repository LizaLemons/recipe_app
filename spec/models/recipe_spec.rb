require 'rails_helper'

describe Recipe do
  let(:cereal) { Recipe.new(title: "Cereal and Milk",
                            ingredients: "Cereal, milk",
                            directions: "Pour milk over cereal",
                            image_url: "http://thumbs.dreamstime.com/x/bowl-cereal-413319.jpg",
                            yummly_id: "Saffron-chicken-with-parsley-and-lemon-309356")}


  it { is_expected.to validate_presence_of :title}
  it { is_expected.to validate_presence_of :ingredients}
  it { is_expected.to validate_presence_of :image_url}
end
