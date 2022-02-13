class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.is_a?(String) && /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i.match?(value)
      record.errors.add(attribute, 'must be an mail address')
    end
  end
end