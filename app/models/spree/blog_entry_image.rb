class Spree::BlogEntryImage < Spree::Asset
  has_attached_file :attachment, 
    styles: {:mini => '48x48#', :normal => '200x200>', :large => '600x600>'},
    default_style: :large,
    url: "/assets/blog_entry_images/:id/:style/:basename.:extension",
    path: ":rails_root/public/assets/blog_entry_images/:id/:style/:basename.:extension"  
 
  validates_attachment :attachment,
    presence: true,
    content_type: { content_type: %w(image/jpeg image/jpg image/png image/gif) }
end
