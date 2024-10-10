class CreateSprints < ActiveRecord::Migration[8.0]
  def change
    create_table :sprints do |t|
      t.string :iteration_id
      t.string :title
      t.date :start_date
      t.integer :duration
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
