class CreatePairs < ActiveRecord::Migration[5.0]
  def change
    create_table :pairs do |t|
      t.string :pair_name
      t.string :rate
      t.string :altname
      t.string :aclass_base
      t.string :base
      t.string :aclass_quote
      t.string :quote
      t.string :lot
      t.string :pair_decimals
      t.string :lot_decimals
      t.string :lot_multiplier
      t.string :leverage_buy
      t.string :leverage_sell
      t.string :fees
      t.string :fees_maker
      t.string :fee_volume_currency
      t.string :margin_call
      t.string :margin_stop

      t.timestamps
    end
  end
end
