class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.integer :article_id
      t.references :user, foreign_key: true
      t.references :article, index: true

      t.timestamps
    end
  end
end
