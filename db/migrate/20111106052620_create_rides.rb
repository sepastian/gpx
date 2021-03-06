class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.datetime :start_time
      t.decimal :distance, :precision => 20, :scale => 10
      t.decimal :ascending_distance, :precision => 20, :scale => 10
      t.decimal :descending_distance, :precision => 20, :scale => 10
      t.decimal :flat_distance, :precision => 20, :scale => 10
      t.decimal :elevation_gain, :precision => 20, :scale => 10
      t.decimal :elevation_loss, :precision => 20, :scale => 10
      t.decimal :elevation_change, :precision => 20, :scale => 10
      t.decimal :maximum_elevation, :precision => 20, :scale => 10
      t.decimal :minimum_elevation, :precision => 20, :scale => 10
      t.decimal :duration, :precision => 20, :scale => 10
      t.decimal :active_duration, :precision => 20, :scale => 10
      t.decimal :ascending_duration, :precision => 20, :scale => 10
      t.decimal :descending_duration, :precision => 20, :scale => 10
      t.decimal :flat_duration, :precision => 20, :scale => 10
      t.decimal :average_pace, :precision => 20, :scale => 10
      t.decimal :average_ascending_pace, :precision => 20, :scale => 10
      t.decimal :average_descending_pace, :precision => 20, :scale => 10
      t.decimal :average_flat_pace, :precision => 20, :scale => 10
      t.decimal :average_speed, :precision => 20, :scale => 10
      t.decimal :average_ascending_speed, :precision => 20, :scale => 10
      t.decimal :average_descending_speed, :precision => 20, :scale => 10
      t.decimal :average_flat_speed, :precision => 20, :scale => 10
      t.decimal :maximum_speed, :precision => 20, :scale => 10
      t.integer :maximum_heart_rate
      t.decimal :average_heart_rate, :precision => 20, :scale => 10
      t.decimal :average_cadence, :precision => 20, :scale => 10
      t.timestamps
    end
  end
end
