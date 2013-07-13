class AddHyperlinkToActivities < ActiveRecord::Migration
  def change
  	add_column :activities , :hyperlink , :string
  end
end
