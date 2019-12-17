# frozen_string_literal: true

# :nodoc:
class AddExtraFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string, unique: true
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
  end
end
