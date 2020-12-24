
    require 'httparty'
    response = HTTParty.get("https://trefle.io/api/v1/plants?token=tM_vyRwHmo__kNvStVE0N3950_E7eGC8nyoCqmZhEuA")
    # puts response.body
    result = JSON.parse(response.body)
    # puts result  WORKS
    # puts result['data'] WORKS
    # puts result['data'][0] WORKS

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

      #  new_plant = Plant.new(data)
      #  new_plant.save()
    end
    
    puts plant_data 
      # - works with individual element fields





    # p @plants
    # # @pagy, @plants = pagy(Plant.all)

    # render json: @plants
