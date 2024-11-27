# == Schema Information
#
# Table name: image_fakes
#
#  id         :bigint           not null, primary key
#  path       :string
#  name       :string
#  typeImage  :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ImageFake < ApplicationRecord
end
