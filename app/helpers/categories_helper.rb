module CategoriesHelper
  def category(category_id = nil)
    Category.find(category_id).name
  end
end
