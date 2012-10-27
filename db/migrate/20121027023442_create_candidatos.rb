class CreateCandidatos < ActiveRecord::Migration
  def change
    create_table :candidatos do |t|
      t.string :name
      t.text :desc
      t.integer :votes

      t.timestamps
    end
  end
end
