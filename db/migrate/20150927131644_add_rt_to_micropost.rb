class AddRtToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :Rt_user_id, :integer
    add_column :microposts, :Rt_content, :string
    add_column :microposts, :Rt_created_at, :datetime
    add_column :microposts, :Rt_updated_at, :datetime
  end
end
