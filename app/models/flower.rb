# == Schema Information
#
# Table name: flowers
#
#  id           :integer          not null, primary key
#  sepal_length :float
#  sepal_width  :float
#  petal_length :float
#  petal_width  :float
#  species_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  state        :string
#

class Flower < ApplicationRecord
  belongs_to :species, optional: true

  validates_presence_of :sepal_length,:sepal_width,:petal_length,:petal_width

  state_machine initial: :new do
    event :predict do
      transition :new => :predicted
    end

    event :approve do
      transition :predicted => :approved
    end

    event :reject do
      transition :predicted => :rejected
    end

    event :set_initial_data do
      transition :new => :initial_data
    end
  end
end
