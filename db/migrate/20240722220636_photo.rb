class Photo < ActiveRecord::Migration[7.1]
  def change
    rename_column :products, :image, :photo
  end
end
