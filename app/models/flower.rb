class Flower < ApplicationRecord
  belongs_to :species, optional: true

  validates_presence_of :sepal_length,:sepal_width,:petal_length,:petal_width
end
