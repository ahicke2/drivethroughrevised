class WendysController < ApplicationController
  def index
    @wendys = Wendy.all
  end
end
