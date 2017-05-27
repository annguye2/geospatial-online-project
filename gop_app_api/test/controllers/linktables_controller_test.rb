require 'test_helper'

class LinktablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linktable = linktables(:one)
  end

  test "should get index" do
    get linktables_url, as: :json
    assert_response :success
  end

  test "should create linktable" do
    assert_difference('Linktable.count') do
      post linktables_url, params: { linktable: { creator: @linktable.creator, feature_id: @linktable.feature_id, project_id: @linktable.project_id } }, as: :json
    end

    assert_response 201
  end

  test "should show linktable" do
    get linktable_url(@linktable), as: :json
    assert_response :success
  end

  test "should update linktable" do
    patch linktable_url(@linktable), params: { linktable: { creator: @linktable.creator, feature_id: @linktable.feature_id, project_id: @linktable.project_id } }, as: :json
    assert_response 200
  end

  test "should destroy linktable" do
    assert_difference('Linktable.count', -1) do
      delete linktable_url(@linktable), as: :json
    end

    assert_response 204
  end
end
