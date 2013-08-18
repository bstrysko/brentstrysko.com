class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
    	t.string :title
    	t.string :content

    	t.datetime :posted

      t.timestamps
    end
  end
end
