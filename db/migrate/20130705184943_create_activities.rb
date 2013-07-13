class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :subject
      t.date :shift_date
      t.string :album
      t.boolean :is_over , default: false
    end
  end
end
