# == Schema Information
#
# Table name: predictions
#
#  id             :integer          not null, primary key
#  result_species :string
#  flower_id      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Prediction < ApplicationRecord
  belongs_to :flower
end
