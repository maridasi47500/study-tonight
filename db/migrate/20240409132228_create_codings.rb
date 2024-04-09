class CreateCodings < ActiveRecord::Migration[7.1]
  def change
    create_table :codings do |t|
      t.string :name
      t.string :pic
      t.text :description
      t.integer :programminglanguage_id

      t.timestamps
    end
  end
end
