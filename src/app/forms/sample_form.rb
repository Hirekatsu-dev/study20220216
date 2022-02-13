class SampleForm
  include ActiveModel::Model
  attr_accessor :profile

  validates :profile, allow_nil: false, length: { maximum: 500 }
end