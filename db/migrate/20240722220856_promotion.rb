class Promotion < ActiveRecord::Migration[7.1]
  def change
    rename_column :products, :promo, :is_promotion
  end
end
