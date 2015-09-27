class RemoveRtFromMicropost < ActiveRecord::Migration
  def change
    remove_column :microposts, :Rt_user_id, :integer
    remove_column :microposts, :Rt_content, :string
    remove_column :microposts, :Rt_created_at, :datetime
    remove_column :microposts, :Rt_updated_at, :datetime
  end
end
