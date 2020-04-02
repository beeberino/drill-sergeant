class CreateResultUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :result_units do |t|
      t.integer :quantity
      t.integer :unit, default: 0
    end

    add_reference :result_units, :result, foreign_key: true
  end
end
