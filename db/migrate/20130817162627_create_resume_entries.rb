class CreateResumeEntries < ActiveRecord::Migration
  def change
    create_table :resume_entries do |t|
    	#TODO: look this up
    	t.integer :resume_category_id

    	t.string :name
    	t.text :value

    	t.date :begin
    	t.date :end
    end
  end
end
