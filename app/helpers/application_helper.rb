module ApplicationHelper
  def avatar_url
    gravatar_id = Digest::MD5::hexdigest(ENV['EMAIL']).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end

  def copyright_year
    case Time.now.year
    when 2013 then '2013'
    else
      '2013 - ' + Time.now.year.to_s
    end
  end
end
