class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :twitter_name
      t.string :twitter_nickname
      t.string :twitter_uid

      t.timestamps
    end
  end
end
