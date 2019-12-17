# frozen_string_literal: true

# :nodoc:
class EditConfirmationToUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :confirmation_token, :confirmation_token
    rename_column :users,  :confirmed_at, :confirmed_at
    rename_column :users,  :confirmation_sent_at, :confirmation_sent_at
    rename_column :users, :unconfimed_email, :unconfirmed_email
  end
end
