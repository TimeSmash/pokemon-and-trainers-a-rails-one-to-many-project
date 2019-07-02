class TrainersController < ApplicationController

    def index
        @trainers = Trainer.all
    end

    def new
        @trainer = Trainer.new
    end
    
    def create #Create new gtrainer but so user_id is tied to it...
        @trainer = Trainer.create(name: params[:trainer][:name],badges: params[:trainer][:badges])
        redirect_to trainer_path(@trainer)
    end
    
    def show
        @trainer = Trainer.find(params[:id])
    end

    def edit
        @trainer = Trainer.find(params[:id])
    end

    def update
        @trainer = Trainer.find(params[:id])
        @trainer.update(name: params[:trainer][:name],badges: params[:trainer][:badges])
        redirect_to trainer_path(@trainer)
    end

    def delete
    end

end
