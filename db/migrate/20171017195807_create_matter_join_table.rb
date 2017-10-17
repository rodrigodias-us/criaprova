class CreateMatterJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :levels, :matters do |t|
      # t.index [:level_id, :metter_id]
      t.index [:matter_id, :level_id], unique: true
    end
  end
end
