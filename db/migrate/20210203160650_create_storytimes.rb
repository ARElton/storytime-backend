class CreateStorytimes < ActiveRecord::Migration[6.0]
  def change
    create_table :storytimes do |t|
      t.string :title
      t.integer :age
      t.string :genre
      t.integer :time

      t.timestamps
    end
  end
end
