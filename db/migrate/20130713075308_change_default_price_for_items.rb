class ChangeDefaultPriceForItems < ActiveRecord::Migration

  def change
  	change_column :items, :price, :integer , :default=>20
  end

end
