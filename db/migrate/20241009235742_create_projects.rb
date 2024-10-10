class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.integer :number
      t.string :title
      t.string :public
      t.string :closed
      t.string :url
      t.string :organization

      t.timestamps
    end
  end
end
