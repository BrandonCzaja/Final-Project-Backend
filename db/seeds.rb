# plant = Plant.create(api_id: 005, common_name: "Test5", slug: "Test5", scientific_name: "Test5", year: 2020, rank:"Test5", family_common_name: "Test5", image: "Test5", genus: "Test5", family: "Test5")



# plant = Plant.create(api_id: 006, common_name: "Test6", slug: "Test6", scientific_name: "Test6", year: 2020, rank:"Test6", family_common_name: "Test6", image: "Test6", genus: "Test6", family: "Test6")


# p "Created #{Plant.count} plants"
# puts "Seed Complete"


# Plants by region
# http://{defaultHost}/api/v1/distributions/{zone_id}/plants

# ALL PLANTS: DO NOT DELETE THIS CODE
# response = HTTParty.get("https://trefle.io/api/v1/plants?token=tM_vyRwHmo__kNvStVE0N3950_E7eGC8nyoCqmZhEuA")


# PLANTS BY NORTH AMERICAN REGION
response = HTTParty.get("https://trefle.io/api/v1/distributions/7/plants?token=tM_vyRwHmo__kNvStVE0N3950_E7eGC8nyoCqmZhEuA")
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



p "Created #{Plant.count} plants"
puts "Seed Complete"






# RUN THIS WHEN SEEDING THE DATABASE: EXAMPLE
# Movie.destroy_all

# Movie.create!([{
#   title: "Ant-Man",
#   director: "Peyton Reed",
#   storyline: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
#   watched_on: 5.days.ago
# },
# {
#   title: "Pixels",
#   director: "Chris Columbus",
#   storyline: "When aliens misinterpret video feeds of classic arcade games as a declaration of war, they attack the Earth in the form of the video games.",
#   watched_on: 3.days.ago
# },
# {
#   title: "Terminator Genisys",
#   director: "Alan Taylor",
#   storyline: "When John Connor, leader of the human resistance, sends Sgt. Kyle Reese back to 1984 to protect Sarah Connor and safeguard the future, an unexpected turn of events creates a fractured timeline. Now, Sgt. Reese finds himself in a new and unfamiliar version of the past, where he is faced with unlikely allies, including the Guardian, dangerous new enemies, and an unexpected new mission: To reset the future...",
#   watched_on: 10.days.ago
# }])

# p "Created #{Movie.count} movies"