class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.references :specialty, foreign_key: true
      t.string :name
      t.text :description
      t.boolean :task_done, default: false

      t.timestamps
    end
  end
end
