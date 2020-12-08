require 'password_strength'
class PasswordValidator < ActiveModel::Validator
    def validate(record)
        strength = PasswordStrength.test("johndoe", record.password_digest)
        unless strength.status == 'strong'
            record.errors[:password_digest] << "Password must include at least one capital letter, one special character, and be at least 7 characters long"
        end
    end
end 