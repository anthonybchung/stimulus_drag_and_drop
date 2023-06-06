class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :position

      t.timestamps
    end
    add_index :tasks, :name, unique: true
  end
end
