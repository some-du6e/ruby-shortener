class CreateLinks < ActiveRecord::Migration[8.1]
  def change
    create_table :links do |t|
      t.string :link
      t.string :name
      
      t.timestamps
    end
  end
end
