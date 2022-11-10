class CreateRates < ActiveRecord::Migration[7.0]
  def change
    create_table :rates do |t|
      t.float :note

      t.timestamps
    end
  end
end
