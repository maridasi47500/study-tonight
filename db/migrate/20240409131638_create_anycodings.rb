class CreateAnycodings < ActiveRecord::Migration[7.1]
  def change
    create_table :anycodings do |t|
      t.integer :somecoding_id
      t.string :name
      t.text :content
      t.text :code

      t.timestamps
    end
  end
end
