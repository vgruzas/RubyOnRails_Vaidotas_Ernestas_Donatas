# frozen_string_literal: true

# :nodoc:
class AddImageToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :image, :string
  end
end
