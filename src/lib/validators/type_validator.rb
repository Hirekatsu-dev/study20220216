class TypeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.is_a?(options[:type])
      record.errors.add(attribute, 'is invalid')
    end
  end
end