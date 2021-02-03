class CreateChildStorytimes < ActiveRecord::Migration[6.0]
  def change
    create_table :child_storytimes do |t|
      t.integer :child_id
      t.integer :storytime_id
      t.text :comment

      t.timestamps
    end
  end
end
