module Spree
  module AppConfigurationDecorator
    def self.prepended(base)
      base.preference :blog_alias, :string, default: 'blog'
    end
  end
end

::Spree::AppConfiguration.prepend(Spree::AppConfigurationDecorator)
