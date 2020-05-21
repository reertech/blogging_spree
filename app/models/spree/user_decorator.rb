module Spree
  module UserDecorator
    def self.prepended(base)
      base.has_many :blog_entries, :foreign_key => :author_id
    end
  end
end

Spree::User.prepend(Spree::UserDecorator)

Spree::PermittedAttributes.user_attributes.push :nickname, :website_url, :google_plus_url, :bio_info
