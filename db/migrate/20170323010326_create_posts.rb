class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :summary
      t.string :resource_type
      t.string :file_url
      t.boolean :approoved
      t.string :user
      t.references :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
