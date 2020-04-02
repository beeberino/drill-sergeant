class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.integer :intensity
    end

    add_reference :results, :user, foreign_key: true
    add_reference :results, :workout, foreign_key: true
    add_reference :results, :exercise, foreign_key: true
  end
end
