class CreateBotos < ActiveRecord::Migration
  def change
    create_table :botos do |t|
      t.references :candidate, index: true
      t.references :user, index: true
      t.text :comments

      t.timestamps null: false
    end
    add_foreign_key :botos, :candidates
    add_foreign_key :botos, :users
  end
end
