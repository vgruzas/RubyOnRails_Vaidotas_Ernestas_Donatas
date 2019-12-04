require 'carrierwave/orm/activerecord'

class Product < ApplicationRecord

  mount_uploader :image, ImageUploader

  validates :title, :image, presence: true
  validate :validate_new_product

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end


  private

  def validate_new_product
    errors.add(:title, I18n.t('Product_title_must_be_shorter')) if title.size > 30
  end

end
