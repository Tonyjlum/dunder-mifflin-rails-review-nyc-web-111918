class DogsController < ApplicationController

  def index
    @dogs = Dog.most_loved
  end

  def show
    @dog = Dog.find(params[:id])
  end

end
