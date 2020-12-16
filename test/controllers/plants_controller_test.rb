require 'test_helper'

class PlantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant = plants(:one)
  end

  test "should get index" do
    get plants_url, as: :json
    assert_response :success
  end

  test "should create plant" do
    assert_difference('Plant.count') do
      post plants_url, params: { plant: { api_id: @plant.api_id, common_name: @plant.common_name, family: @plant.family, family_common_name: @plant.family_common_name, genus: @plant.genus, image: @plant.image, rank: @plant.rank, scientific_name: @plant.scientific_name, slug: @plant.slug, year: @plant.year } }, as: :json
    end

    assert_response 201
  end

  test "should show plant" do
    get plant_url(@plant), as: :json
    assert_response :success
  end

  test "should update plant" do
    patch plant_url(@plant), params: { plant: { api_id: @plant.api_id, common_name: @plant.common_name, family: @plant.family, family_common_name: @plant.family_common_name, genus: @plant.genus, image: @plant.image, rank: @plant.rank, scientific_name: @plant.scientific_name, slug: @plant.slug, year: @plant.year } }, as: :json
    assert_response 200
  end

  test "should destroy plant" do
    assert_difference('Plant.count', -1) do
      delete plant_url(@plant), as: :json
    end

    assert_response 204
  end
end
