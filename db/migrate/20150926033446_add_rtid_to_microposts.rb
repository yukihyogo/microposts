class AddRtidToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :Rt_id, :integer
  end
end
