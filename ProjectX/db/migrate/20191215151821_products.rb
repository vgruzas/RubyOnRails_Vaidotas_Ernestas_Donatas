class Products < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :url, :string
  end
end
