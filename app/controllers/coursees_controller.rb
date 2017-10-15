class CourseesController < ApplicationController
  before_action :set_coursee, only: [:show, :edit, :update, :destroy]

  # GET /coursees
  # GET /coursees.json
  def index
    @coursees = Coursee.all


  end

  # GET /coursees/1
  # GET /coursees/1.json
  def show
    @courseess= Coursee
                        .joins('JOIN "enrollls" ON "coursees"."course_id" = "enrollls"."course_id"' )
                       .select("enrollls.student_id, enrollls.percentage, enrollls.lettergrade")
                       .where(:coursees => {:id => params[:id]})


  end

  # GET /coursees/new
  def new
    @coursee = Coursee.new
  end

  # GET /coursees/1/edit
  def edit
  end

  # POST /coursees
  # POST /coursees.json
  def create
    @coursee = Coursee.new(coursee_params)

    respond_to do |format|
      if @coursee.save
        format.html { redirect_to @coursee, notice: 'Coursee was successfully created.' }
        format.json { render :show, status: :created, location: @coursee }
      else
        format.html { render :new }
        format.json { render json: @coursee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coursees/1
  # PATCH/PUT /coursees/1.json
  def update
    respond_to do |format|
      if @coursee.update(coursee_params)
        format.html { redirect_to @coursee, notice: 'Coursee was successfully updated.' }
        format.json { render :show, status: :ok, location: @coursee }
      else
        format.html { render :edit }
        format.json { render json: @coursee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursees/1
  # DELETE /coursees/1.json
  def destroy
    @coursee.destroy
    respond_to do |format|
      format.html { redirect_to coursees_url, notice: 'Coursee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coursee
      @coursee = Coursee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coursee_params
      params.require(:coursee).permit(:course_id, :description)
    end
end
