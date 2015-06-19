class FastfoodsController < ApplicationController
  before_action :set_fastfood, only: [:show, :edit, :update, :destroy]

  # GET /fastfoods
  # GET /fastfoods.json
  def index
    @fastfoods = Fastfood.all
  end

  # GET /fastfoods/1
  # GET /fastfoods/1.json
  def show
  end

  # GET /fastfoods/new
  def new
    @fastfood = Fastfood.new
  end

  # GET /fastfoods/1/edit
  def edit
  end

  # POST /fastfoods
  # POST /fastfoods.json
  def create
    @fastfood = Fastfood.new(fastfood_params)

    respond_to do |format|
      if @fastfood.save
        format.html { redirect_to @fastfood, notice: 'Fastfood was successfully created.' }
        format.json { render :show, status: :created, location: @fastfood }
      else
        format.html { render :new }
        format.json { render json: @fastfood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fastfoods/1
  # PATCH/PUT /fastfoods/1.json
  def update
    respond_to do |format|
      if @fastfood.update(fastfood_params)
        format.html { redirect_to @fastfood, notice: 'Fastfood was successfully updated.' }
        format.json { render :show, status: :ok, location: @fastfood }
      else
        format.html { render :edit }
        format.json { render json: @fastfood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fastfoods/1
  # DELETE /fastfoods/1.json
  def destroy
    @fastfood.destroy
    respond_to do |format|
      format.html { redirect_to fastfoods_url, notice: 'Fastfood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fastfood
      @fastfood = Fastfood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fastfood_params
      params.require(:fastfood).permit(:name)
    end
end
