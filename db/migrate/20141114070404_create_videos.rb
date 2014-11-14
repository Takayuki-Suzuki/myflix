class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.string :cover_image_url
      t.string :large_image_url
      t.string :video_url
      t.float :rating
      t.integer :category_id
      t.timestamps
    end
  end
end
