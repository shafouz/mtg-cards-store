class AddOracleTextToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :oracle_text, :string
  end
end
