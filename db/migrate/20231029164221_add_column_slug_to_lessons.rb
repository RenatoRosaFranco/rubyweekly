class AddColumnSlugToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :slug, :string
  end
end
