class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
    	t.string :title, :null => false
    	t.text :desc
    	t.string :img
    	t.string :github_url
    	t.string :demo_url
    	
      t.timestamps
    end
  end
end
