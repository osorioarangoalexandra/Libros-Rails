class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
     t.string :name
     t.string :author
     t.integer :quality
     t.string :language 
     t.string :genre
     
      t.timestamps
    end
  end
end
