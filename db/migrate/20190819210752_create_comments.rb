class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :postUrl, null: false
      t.string :name, null: false
      t.string :email
      t.text :body, null: false
      t.timestamps
    end
    add_index :comments, :postUrl
  end
end
