class SampleForm
  include ActiveModel::Model
  attr_accessor :id_array

  validates :id_array, allow_nil: false, array: true
end