
class CreatePosts < ActiveRecord::Migration
  
  def change
    
    create_table :posts do |t|
      t.string :post_title
      t.text :post_content
      t.decimal :post_item1, default: 0 
      t.decimal :post_item2, default: 0
      t.decimal :post_item3, default: 0
      t.decimal :post_item4, default: 0
      t.decimal :post_item5, default: 0
      t.date :watch_date
      t.string :image
   
   
     
      
      # foreign key
      t.belongs_to :performance
      t.belongs_to :seat
      t.belongs_to :user
       

      t.timestamps null: false
     
    end
  end
end
