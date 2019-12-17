# frozen_string_literal: true

# :nodoc:
class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
