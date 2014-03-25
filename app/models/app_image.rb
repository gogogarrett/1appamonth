class AppImage < ActiveRecord::Base
  mount_uploader :image, AppImageUploader

  belongs_to :app
end
