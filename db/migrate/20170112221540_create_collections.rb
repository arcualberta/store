class CreateCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :collections do |t|
      t.string :name, null: false
      t.belongs_to :owner
      t.belongs_to :collection
      t.timestamps
    end
  end
end