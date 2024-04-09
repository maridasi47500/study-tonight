class CreateSomecodings < ActiveRecord::Migration[7.1]
  def change
    create_table :somecodings do |t|
      t.integer :coding_id
      t.string :name
      t.string :pic

      t.timestamps
    end
  end
end
