class AddSuperUserFieldToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_super, :boolean
  end
end
