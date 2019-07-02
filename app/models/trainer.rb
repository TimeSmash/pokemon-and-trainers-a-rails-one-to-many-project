class Trainer < ApplicationRecord

    has_many :pokemons

    def pokemon_names
        self.pokemons.map {|p| p.name}
    end
end
