class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :sugar
      t.string :ice
      t.string :sign
      t.references :activity
    end
    add_index :items, :activity_id
  end
end
