class TaxicoursesController < ApplicationController
  before_action :set_taxicourse, only: [:show, :edit, :update, :destroy]

  # GET /taxicourses
  # GET /taxicourses.json
  def index
    @taxicourses = Taxicourse.all
  end

  # GET /taxicourses/1
  # GET /taxicourses/1.json
  def show
  end

  # GET /taxicourses/new
  def new
    @taxicourse = Taxicourse.new
  end

  # GET /taxicourses/1/edit
  def edit
  end

  # POST /taxicourses
  # POST /taxicourses.json
  def create
    @taxicourse = Taxicourse.new(taxicourse_params)

    respond_to do |format|
      if @taxicourse.save
        format.html { redirect_to @taxicourse, notice: 'Taxicourse was successfully created.' }
        format.json { render :show, status: :created, location: @taxicourse }
      else
        format.html { render :new }
        format.json { render json: @taxicourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taxicourses/1
  # PATCH/PUT /taxicourses/1.json
  def update
    respond_to do |format|
      if @taxicourse.update(taxicourse_params)
        format.html { redirect_to @taxicourse, notice: 'Taxicourse was successfully updated.' }
        format.json { render :show, status: :ok, location: @taxicourse }
      else
        format.html { render :edit }
        format.json { render json: @taxicourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxicourses/1
  # DELETE /taxicourses/1.json
  def destroy
    @taxicourse.destroy
    respond_to do |format|
      format.html { redirect_to taxicourses_url, notice: 'Taxicourse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxicourse
      @taxicourse = Taxicourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taxicourse_params
      params.require(:taxicourse).permit(:startpoint, :endpoint, :enrolltime, :genderonly, :history, :chatlink, :descript1, :descript2, :randstr)
    end
end
