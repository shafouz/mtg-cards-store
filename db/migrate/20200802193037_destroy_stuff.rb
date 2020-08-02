class DestroyStuff < ActiveRecord::Migration[6.0]
  def change
    drop_table :orders
    remove_column :products, :stripe_plan_name
    remove_column :products, :paypal_plan_name
    remove_column :products, :price_cents
    remove_column :products, :price_currency
  end
end
