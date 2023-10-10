class CreateGs < ActiveRecord::Migration[7.1]
  def change
    create_table :gs do |t|
      t.string :MiningType
      t.string :name
      t.string :acronym

      t.timestamps
    end
  end
end
