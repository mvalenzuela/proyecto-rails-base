class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.float :value
      t.references :person, foreign_key: true
      t.references :assignment, foreign_key: true

      t.timestamps
    end
  end
end
