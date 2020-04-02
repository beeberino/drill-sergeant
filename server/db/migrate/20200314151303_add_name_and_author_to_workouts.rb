class AddNameAndAuthorToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :name, :string, null: false
    add_reference :workouts, :author, foreign_key: { to_table: :users }
  end
end
