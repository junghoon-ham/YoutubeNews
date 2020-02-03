class AddLiveToYoutube < ActiveRecord::Migration[5.2]
  def change
    add_column :youtubes, :live, :string
  end
end
