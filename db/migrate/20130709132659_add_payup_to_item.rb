class AddPayupToItem < ActiveRecord::Migration
  def change
  	add_column :items, :payup, :boolean , :default=>false
  	add_column :activities, :created_at, :datetime
    add_column :activities, :updated_at, :datetime
  end
end
