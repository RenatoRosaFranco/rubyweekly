class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string   :thumbnail
      t.string   :name
      t.text     :description
      t.string   :video_url

      t.timestamps
    end
  end
end
