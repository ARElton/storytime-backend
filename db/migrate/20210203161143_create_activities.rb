class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :image
      t.integer :category_id

      t.timestamps
    end
  end
end
