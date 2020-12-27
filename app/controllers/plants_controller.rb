class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :update, :destroy]

  # GET /plants
  def index
    
    response = HTTParty.get("https://trefle.io/api/v1/plants?token=tM_vyRwHmo__kNvStVE0N3950_E7eGC8nyoCqmZhEuA")
    # puts response.body
    result = JSON.parse(response.body)

    plant_data = result['data'].map do |element|
      data = { 
        api_id: element['id'],
        common_name: element['common_name'],
        slug: element['slug'],
        scientific_name: element['scientific_name'],
        year: element['year'],
        rank: element['rank'],
        family_common_name: element['family_common_name'],
        image: element['image_url'],
        genus: element['genus'],
        family: element['family']
       }

    end

    # Pagy testing - KEEP
    @pagy, @plants = pagy(Plant.all, items: 10)
    render json: {data: @plants, 
                  pagy: pagy_metadata(@pagy)}


    # For Deployment
    # @plants = Plant.all
    # render json: @plants
  end



  # def results
  
  # end


  # GET /plants/1
  def show
    render json: @plant
  end

  # POST /plants
  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      render json: @plant, status: :created, location: @plant
    else
      render json: @plant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plants/1
  def update
    if @plant.update(plant_params)
      render json: @plant
    else
      render json: @plant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plants/1
  def destroy
    @plant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def plant_params
      params.require(:plant).permit(:api_id, :common_name, :slug, :scientific_name, :year, :rank, :family_common_name, :image, :genus, :family)
    end
end
