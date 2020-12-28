# response = HTTParty.get("https://trefle.io/api/v1/plants?token=tM_vyRwHmo__kNvStVE0N3950_E7eGC8nyoCqmZhEuA")
# # puts response.body
# result = JSON.parse(response.body)

# plant_data = result['data'].map do |element|
#   data = { 
#     api_id: element['id'],
#     common_name: element['common_name'],
#     slug: element['slug'],
#     scientific_name: element['scientific_name'],
#     year: element['year'],
#     rank: element['rank'],
#     family_common_name: element['family_common_name'],
#     image: element['image_url'],
#     genus: element['genus'],
#     family: element['family']
#    }

#   new_plant = Plant.new(data)     
#   new_plant.save()

#   @plants = Plant.all
#   puts "Seeding complete"
# end


response = HTTParty.get("https://trefle.io/api/v1/plants?token=tM_vyRwHmo__kNvStVE0N3950_E7eGC8nyoCqmZhEuA")
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

  new_plant = Plant.new(data)
  new_plant.save()

end






















# PLANTS BY NORTH AMERICAN REGION
# response = HTTParty.get("https://trefle.io/api/v1/distributions/7/plants?token=tM_vyRwHmo__kNvStVE0N3950_E7eGC8nyoCqmZhEuA")
#     result = JSON.parse(response.body)

#     plant_data = result['data'].map do |element|
#       data = { 
#         api_id: element['id'],
#         common_name: element['common_name'],
#         slug: element['slug'],
#         scientific_name: element['scientific_name'],
#         year: element['year'],
#         rank: element['rank'],
#         family_common_name: element['family_common_name'],
#         image: element['image_url'],
#         genus: element['genus'],
#         family: element['family']
#        }

#        new_plant = Plant.new(data)
#        new_plant.save()
#     end



# p "Created #{Plant.count} plants"
# puts "Seed Complete"


# user = User.create(username: 'Test', password: 'Test')
# user = User.create(username: 'Test2', password: 'Test2')



# response = HTTParty.get("https://trefle.io/api/v1/distributions/7/plants?token=tM_vyRwHmo__kNvStVE0N3950_E7eGC8nyoCqmZhEuA")
# result = JSON.parse(response.body)

# plant_data = result['data'].map do |element|
#   data = { 
#     api_id: element['id'],
#     common_name: element['common_name'],
#     slug: element['slug'],
#     scientific_name: element['scientific_name'],
#     year: element['year'],
#     rank: element['rank'],
#     family_common_name: element['family_common_name'],
#     image: element['image_url'],
#     genus: element['genus'],
#     family: element['family']
#    }

#    new_plant = Plant.new(data)
#    new_plant.save()














# Plants by region
# http://{defaultHost}/api/v1/distributions/{zone_id}/plants

# ALL PLANTS: DO NOT DELETE THIS CODE
# response = HTTParty.get("https://trefle.io/api/v1/plants?token=tM_vyRwHmo__kNvStVE0N3950_E7eGC8nyoCqmZhEuA")