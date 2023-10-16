class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :User, null: false, foreign_key: { to_table: :users }
      t.references :Post, null: false, foreign_key: { to_table: :users }
      t.text :Test

      t.timestamps
    end
  end
end
