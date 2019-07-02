class Pokemon < ApplicationRecord

    belongs_to :trainer

    def get_trainer_name_by_id
        Trainer.all.find { |trainer| trainer.id == self.trainer_id}.name        
    end

end
