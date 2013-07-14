class AddColumnVideoToUserVideos < ActiveRecord::Migration
  def change
    add_attachment :user_videos, :video
  end
end
