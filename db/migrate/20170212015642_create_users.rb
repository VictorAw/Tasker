class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :flock_token
      t.string :oauth_provider
      t.string :oauth_uid
      t.string :oauth_name
      t.string :oauth_token
      t.datetime :oauth_token_expires_at

      t.timestamps
    end
  end
end
