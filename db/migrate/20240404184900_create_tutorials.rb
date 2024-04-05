class CreateTutorials < ActiveRecord::Migration[7.1]
  def change
    create_table :tutorials do |t|
      t.integer :mytutoriallist_id
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
