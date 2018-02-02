class CreateAssetpairs < ActiveRecord::Migration[5.0]
  def change
    create_table :assetpairs do |t|
      t.string :name

      t.timestamps
    end
  end
end
