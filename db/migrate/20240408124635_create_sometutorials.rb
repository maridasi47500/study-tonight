class CreateSometutorials < ActiveRecord::Migration[7.1]
  def change
    create_table :sometutorials do |t|
      t.integer :mytutorial_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
