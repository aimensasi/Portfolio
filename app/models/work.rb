# == Schema Information
#
# Table name: works
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  desc       :text
#  img        :string
#  github_url :string
#  demo_url   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Work < ApplicationRecord
	mount_uploader :img, ImgUploader

	validates_presence_of :title, :desc, :img, :github_url
end
