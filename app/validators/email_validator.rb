class EmailValidator < ActiveModel::Validator
    def validate(record)
      unless ValidEmail2::Address.new(record.email).valid?
        record.errors[:email] << "Must be a valid email"
      end
    end
  end