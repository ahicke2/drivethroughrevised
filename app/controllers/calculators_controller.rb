class CalculatorsController < ApplicationController
  def index
    @calculators = Calculator.all
  end
end
