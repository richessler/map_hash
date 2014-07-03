class CreateTweet < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :handle
      t.text :link_id
      t.text :content
      t.float :lat
      t.float :long
      t.timestamps
    end
  end
end
