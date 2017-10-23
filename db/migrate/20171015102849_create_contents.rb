class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :body
      t.string :page
      t.string :description
      t.string :image
      t.string :content_type

      t.timestamps
    end
  end
end
