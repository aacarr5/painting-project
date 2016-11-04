class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|

    	t.string :name
    	t.string :description
    	t.string :url

      t.timestamps null: false
    end
  end
end
