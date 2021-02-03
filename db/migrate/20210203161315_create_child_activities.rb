class CreateChildActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :child_activities do |t|
      t.integer :child_id
      t.integer :activity_id
      t.text :comment

      t.timestamps
    end
  end
end
