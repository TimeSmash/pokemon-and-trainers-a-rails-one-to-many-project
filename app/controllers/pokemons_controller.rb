class PokemonsController < ApplicationController

    def index
        @pokemons = Pokemon.all 
    end

    def new
        @pokemon = Pokemon.new
    end
    
    def create #Create new pokemon but so user_id is tied to it...
        @pokemon = Pokemon.create(name: params[:pokemon][:name],element_type: params[:pokemon][:element_type], trainer_id: params[:pokemon][:trainer_id])
        redirect_to pokemon_path(@pokemon)
    end
    
    def show
        @pokemon = Pokemon.find(params[:id])
    end

    def edit
        @pokemon = Pokemon.find(params[:id])
    end

    def update
        @pokemon = Pokemon.find(params[:id])
        @pokemon.update(name: params[:pokemon][:name], trainer_id: params[:pokemon][:trainer_id])
        redirect_to pokemon_path(@pokemon)
    end

    def delete
    end

end
