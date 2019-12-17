# frozen_string_literal: true

# :nodoc:
class AddUserToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :user, index: true
  end
end
