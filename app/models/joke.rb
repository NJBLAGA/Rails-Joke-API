class Joke < ApplicationRecord
  belongs_to :category
  belongs_to :user

  def self.find_by_category(input)
    category = Category.find_by(name: input.capitalize)
    return self.where(category: category)
  end

  def traform_joke
    return {
      auther: self.user.username,
      category: self.category.name,
      body: self.body,
      posted: self.created_at,
      edited: self.updated_at
    }
  end
end
