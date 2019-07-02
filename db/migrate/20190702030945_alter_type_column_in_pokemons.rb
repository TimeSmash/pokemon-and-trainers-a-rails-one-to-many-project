class AlterTypeColumnInPokemons < ActiveRecord::Migration[5.2]
  def change
    rename_column :pokemons, :type, :element_type
  end
end
