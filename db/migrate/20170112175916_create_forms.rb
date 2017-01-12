class CreateForms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
	  t.integer :schema_id, :null => false
      t.date :created_at
      t.date :updated_at
	  
	  t.timestamps
    end
	
	add_foreign_key :forms, :schemas
  end
end