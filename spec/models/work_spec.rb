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

require 'rails_helper'

RSpec.describe Work, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
