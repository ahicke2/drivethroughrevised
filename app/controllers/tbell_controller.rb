class TbellController < ApplicationController
  def index
    @tbell = Tbell.all
  end
end
