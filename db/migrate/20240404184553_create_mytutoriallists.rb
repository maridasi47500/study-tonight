class CreateMytutoriallists < ActiveRecord::Migration[7.1]
  def change
    create_table :mytutoriallists do |t|
      t.integer :sometutorial_id
      t.string :name

      t.timestamps
    end
  end
end
