class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.jsonb :plan, null: false, default: '{}'    
    end

    add_index  :workouts, :plan, using: :gin
  end
end
