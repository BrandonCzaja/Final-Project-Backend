# plant = Plant.create(api_id: 005, common_name: "Test5", slug: "Test5", scientific_name: "Test5", year: 2020, rank:"Test5", family_common_name: "Test5", image: "Test5", genus: "Test5", family: "Test5")



# plant = Plant.create(api_id: 006, common_name: "Test6", slug: "Test6", scientific_name: "Test6", year: 2020, rank:"Test6", family_common_name: "Test6", image: "Test6", genus: "Test6", family: "Test6")


# p "Created #{Plant.count} plants"
# puts "Seed Complete"


# Plants by region
# http://{defaultHost}/api/v1/distributions/{zone_id}/plants

# ALL PLANTS: DO NOT DELETE THIS CODE
# response = HTTParty.get("https://trefle.io/api/v1/plants?token=tM_vyRwHmo__kNvStVE0N3950_E7eGC8nyoCqmZhEuA")


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