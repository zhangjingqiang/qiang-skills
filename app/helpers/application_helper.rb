module ApplicationHelper
  def category(category_id = nil)
    Category.find(category_id).name
  end

  def avatar_url
    gravatar_id = Digest::MD5::hexdigest(ENV['EMAIL']).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end
end
