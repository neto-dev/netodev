class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.string :email
      t.string :content
      t.references :publication, foreign_key: true

      t.timestamps
    end
  end
end
