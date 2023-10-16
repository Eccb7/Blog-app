class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.references :User, null: false, foreign_key: { to_table: :users }
      t.references :Post, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
