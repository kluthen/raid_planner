class ParticipatingsController < ApplicationController
  before_action :set_participating, only: [:show, :edit, :update, :destroy]
  before_action :user_is_logged?

  # GET /participatings
  # GET /participatings.json
  def index
    @participatings = Participating.all
  end

  # GET /participatings/1
  # GET /participatings/1.json
  def show
  end

  # GET /participatings/new
  def new
    @participating = Participating.new
  end

  # GET /participatings/1/edit
  def edit
  end

  def create_or_update 
    @array = c_u_participating_params[:participatings].values
    to_create = []
    to_update = []
    @array.each do |item| 
      if item[:id].empty? 
        to_create << item
      else
        pp = Participating.find(item[:id])
        unless pp.nil?
          pp.update(item)
        end
      end
    end

    Participating.create(to_create)

    redirect_to events_path
  end

  # POST /participatings
  # POST /participatings.json
  def create
    @participating = Participating.new(participating_params)

    respond_to do |format|
      if @participating.save
        format.html { redirect_to @participating.role.event, notice: 'Participating was successfully created.' }
        format.json { render :show, status: :created, location: @participating }
      else
        format.html { render @participating.role.event }
        format.json { render json: @participating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participatings/1
  # PATCH/PUT /participatings/1.json
  def update
    respond_to do |format|
      if @participating.update(participating_params)
        format.html { redirect_to @participating.role.event , notice: 'Participating was successfully updated.' }
        format.json { render :show, status: :ok, location: @participating }
      else
        format.html { render @participating.role.event }
        format.json { render json: @participating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participatings/1
  # DELETE /participatings/1.json
  def destroy
    event =  @participating.role.event
    @participating.destroy
    respond_to do |format|
      format.html { redirect_to event }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participating
      @participating = Participating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participating_params
      params.require(:participating).permit(:role_id, :character_id, :pickup_id, :comment, :available)
    end# Never trust parameters from the scary internet, only allow the white list through.
    
    def c_u_participating_params
      params
    end
end
