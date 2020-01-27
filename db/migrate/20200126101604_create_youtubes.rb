class CreateYoutubes < ActiveRecord::Migration[5.2]
  def change
    create_table :youtubes do |t|
      t.string :title
      t.string :videoId
      t.string :imageUrl
      t.string :publishedAt
      t.string :channelTitle;

      t.timestamps
    end
  end
end
