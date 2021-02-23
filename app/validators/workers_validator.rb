class WorkersValidator < ActiveModel::Validator
    def validate(record)
      # binding.pry 
      if !record.workers
        record.errors[:workers] << "Need to assign at least one worker to the Contact"
      elsif record.workers.size == 0
        record.errors[:workers] << "Need to assign at least one worker to the Contact"
      end
    end
  end