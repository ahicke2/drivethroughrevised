class McdonaldsController < ApplicationController
  def index
    @mcdonalds = Mcdonald.all
  end
end
