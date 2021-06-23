class Joke < ApplicationRecord
  belongs_to :category
  belongs_to :user

  def self.find_by_category(input)
    category = Category.find_by(name: input.capitalize)
    return self.where(category: category)
  end
end
