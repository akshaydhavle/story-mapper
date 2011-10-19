class CreateInitialTables < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.timestamps
    end
  
    create_table :categories do |t|
      t.references :project
      t.string :name
      t.timestamps
    end
  
    create_table :tasks do |t|
      t.references :category
      t.string :description
      t.timestamps
    end
    
    create_table :user_stories do |t|
      t.text :text
      t.references :task
      t.timestamps
    end
  end
end
