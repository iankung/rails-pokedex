class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.all
  end

  def new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params) #params from from
    @pokemon.save
    redirect_to pokemon_path(@pokemon) 
    #Redirect to show action, look at rake routes prefix                                       #pokemon_path, last line could also be redirect_to @pokemon

  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def pokemon_params
      params.require(:pokemon).permit(:name,:description)
    end


end
