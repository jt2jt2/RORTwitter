class Jt2jt2sController < ApplicationController
  before_action :set_jt2jt2, only: [:show, :edit, :update, :destroy]

  # GET /jt2jt2s
  # GET /jt2jt2s.json
  def index
    @jt2jt2s = Jt2jt2.all
  end

  # GET /jt2jt2s/1
  # GET /jt2jt2s/1.json
  def show
  end

  # GET /jt2jt2s/new
  def new
    @jt2jt2 = Jt2jt2.new
  end

  # GET /jt2jt2s/1/edit
  def edit
  end

  # POST /jt2jt2s
  # POST /jt2jt2s.json
  def create
    @jt2jt2 = Jt2jt2.new(jt2jt2_params)

    respond_to do |format|
      if @jt2jt2.save
        format.html { redirect_to @jt2jt2, notice: 'Jt2jt2 was successfully created.' }
        format.json { render :show, status: :created, location: @jt2jt2 }
      else
        format.html { render :new }
        format.json { render json: @jt2jt2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jt2jt2s/1
  # PATCH/PUT /jt2jt2s/1.json
  def update
    respond_to do |format|
      if @jt2jt2.update(jt2jt2_params)
        format.html { redirect_to @jt2jt2, notice: 'Jt2jt2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @jt2jt2 }
      else
        format.html { render :edit }
        format.json { render json: @jt2jt2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jt2jt2s/1
  # DELETE /jt2jt2s/1.json
  def destroy
    @jt2jt2.destroy
    respond_to do |format|
      format.html { redirect_to jt2jt2s_url, notice: 'Jt2jt2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jt2jt2
      @jt2jt2 = Jt2jt2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jt2jt2_params
      params.require(:jt2jt2).permit(:content)
    end
end
