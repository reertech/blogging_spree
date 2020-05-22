class Spree::BlogEntryImage < Spree::Asset
  has_one_attached :attachment

  validates :attachment, attached: true, content_type: [:png, :jpg, :jpeg, :gif]
end
