module Spree
  module StoreControllerDecorator
    def self.prepended(base)
      base.helper 'spree/blog_entries'
    end
  end
end

::Spree::StoreController.prepend(Spree::StoreControllerDecorator)
