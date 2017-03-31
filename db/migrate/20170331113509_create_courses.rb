class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :code
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
