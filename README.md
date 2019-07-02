#Pokemon and Trainers

#Relationships and Attributes

Each Trainer has a name and amount of badges and a list of Pokemon they own.
Each Pokemon has a name, element type, and trainer that owns them

A trainer owns many pokemon, each pokemon belongs to one trainer only
Therefore, a Trainer has_many :pokemons, and a Pokemon belongs_to: trainer

Don't forget that both of these will have primary keys, which we're going to utilize for Trainers.

Tables made that show all Pokemon and trainers as well as clickable names to see each individual trainer and pokemon.

#
