class Product < ApplicationRecord
  validate :validate_new_product

  private

  def validate_new_product
    errors.add(:name, 'Name_must_contain_something') if name.strip == ""
    errors.add(:url, 'Url_must_contain_something') if url.strip == ""
  end

end
