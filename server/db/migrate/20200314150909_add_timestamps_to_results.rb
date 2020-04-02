class AddTimestampsToResults < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :results
  end
end
