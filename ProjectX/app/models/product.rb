require 'carrierwave/orm/activerecord'

class Product < ApplicationRecord

  mount_uploader :image, ImageUploader

  validates :name, :image, presence: true
  validate :validate_new_product
  belongs_to :user
  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end


  private

  def validate_new_product
    errors.add(:name, 'Product_name_must_be_shorter') if name.size > 30
  end

end
