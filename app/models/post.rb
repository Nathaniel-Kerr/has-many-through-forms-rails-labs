class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  # accepts_nested_attributes_for :categories, reject_if: :all_blank

  def categories_attributes=(categories_hashes)
    categories_hashes.each do |i, categories_attributes|
      post.categories.find_or_create_by(name: category_attributes[:name])
  end
end

