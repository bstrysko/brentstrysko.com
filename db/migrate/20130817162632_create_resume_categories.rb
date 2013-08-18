class CreateResumeCategories < ActiveRecord::Migration
  def change
    create_table :resume_categories do |t|
    	t.integer :weight
    	t.string :name
    end
  end
end
