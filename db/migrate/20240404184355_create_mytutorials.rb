class CreateMytutorials < ActiveRecord::Migration[7.1]
  def change
    create_table :mytutorials do |t|
      t.string :name
      t.string :pic
      t.text :description

      t.timestamps
    end
  end
end
