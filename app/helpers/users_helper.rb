module UsersHelper
  def gravatar_for(user, options = { size: 80 })
    size = options[:size]
    gravatar_id =  Digest::MD5.hexdigest(user.email.downcase)
    grabatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(grabatar_url, alt: user.name, class: 'grabatar')
  end
end
