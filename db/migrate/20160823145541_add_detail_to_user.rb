class AddDetailToUser < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :nickname, :string
  	add_column :users, :birth, :datetime

    add_column :users, :personage, :integer
    add_column :users, :studentid, :integer
    add_column :users, :gender, :integer
    add_column :users, :univmajor, :string
    add_column :users, :introduce, :text
    add_reference :users, :taxicourse, index: true, foreign_key: true
  end
end
