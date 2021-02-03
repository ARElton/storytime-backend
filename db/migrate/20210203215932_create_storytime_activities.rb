class CreateStorytimeActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :storytime_activities do |t|
      t.integer :storytime_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
