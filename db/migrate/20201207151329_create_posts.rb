class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image_url
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

#the string datatype has a smaller limit, (although it is quite large) than the text datatype. 
#code to give me this file/migration was 'corenal model post title:string image_url:string description:text user_id:integer'
#the timestamp comes for free, thanks corneal!
