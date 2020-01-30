class AddVideoTimeToYoutube < ActiveRecord::Migration[5.2]
  def change
    add_column :youtubes, :videoTime, :string
  end
end
