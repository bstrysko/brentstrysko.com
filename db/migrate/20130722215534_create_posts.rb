class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.text :content
    	
    	t.datetime :posted

      t.timestamps
    end

    add_reference :posts, :projects
    add_reference :posts, :tutorials

  end
end
