class Killme < ActiveRecord::Migration[6.0]

  create_table :products

  def change
    add_column :products, :name, :string
    add_column :products, :set, :string
    add_column :products, :card_id, :string
    add_column :products, :image_uris, :string
  end    
end
