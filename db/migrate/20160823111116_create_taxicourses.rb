class CreateTaxicourses < ActiveRecord::Migration
  def change
    create_table :taxicourses do |t|
      t.string :startpoint
      t.string :endpoint
      t.datetime :enrolltime
      t.integer :genderonly
      t.text :history
      t.string :chatlink
      t.text :descript1
      t.text :descript2
      t.string :randstr

      t.timestamps null: false
    end
  end
end
