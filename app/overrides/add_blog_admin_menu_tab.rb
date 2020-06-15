Deface::Override.new(virtual_path: 'spree/admin/shared/_main_menu',
                     name: 'blogging_spree_admin_sidebar_menu',
                     insert_bottom: 'nav',
                     :text => "<% if Spree.user_class && can?(:admin, Spree::BlogEntry) %><ul class='nav nav-sidebar border-bottom'><%= tab Spree.t(:'admin.tab.blog_entries'), url: spree.admin_blog_entries_path, icon: 'comment' %></ul><% end %>",
                     :disabled => false)
