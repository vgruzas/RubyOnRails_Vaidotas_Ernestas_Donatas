# frozen_string_literal: true

# :nodoc:
class AddDefaultIsSuperlToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :is_super, :boolean, default: false
  end
end
