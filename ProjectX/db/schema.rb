# frozen_string_literal: true

ActiveRecord::Schema.define(version: 2019_12_15_151821) do
end
ActiveRecord::Schema.define(version: 2019_12_15_204323) do
  create_table 'products', options:
      'ENGINE=MyISAM DEFAULT
CHARSET=latin1 COLLATE=latin1_bin', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'image'
    t.bigint 'user_id'
    t.index ['user_id'], name: 'index_products_on_user_id'
  end

  create_table 'users',
               options: 'ENGINE=MyISAM DEFAULT
CHARSET=latin1 COLLATE=latin1_bin',
               force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'username'
    t.string 'firstname'
    t.string 'lastname'
    t.boolean 'is_super', default: false
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'],
            name: 'index_users_on_reset_password_token', unique: true
    t.index ['username'], name: 'index_users_on_username', unique: true
  end
end
