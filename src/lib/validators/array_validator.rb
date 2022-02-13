class ArrayValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.nil? || value.is_a?(Array)
      record.errors.add(attribute, 'is invalid')
    end
  end
end