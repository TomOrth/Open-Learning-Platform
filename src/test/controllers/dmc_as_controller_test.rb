require 'test_helper'

class DmcAsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dmca = dmcas(:one)
  end

  test "should get index" do
    get dmcas_url
    assert_response :success
  end

  test "should get new" do
    get new_dmca_url
    assert_response :success
  end

  test "should create dmca" do
    assert_difference('Dmca.count') do
      post dmcas_url, params: { dmca: { description: @dmca.description, lesson_plan: @dmca.lesson_plan, name: @dmca.name } }
    end

    assert_redirected_to dmca_url(Dmca.last)
  end

  test "should show dmca" do
    get dmca_url(@dmca)
    assert_response :success
  end

  test "should get edit" do
    get edit_dmca_url(@dmca)
    assert_response :success
  end

  test "should update dmca" do
    patch dmca_url(@dmca), params: { dmca: { description: @dmca.description, lesson_plan: @dmca.lesson_plan, name: @dmca.name } }
    assert_redirected_to dmca_url(@dmca)
  end

  test "should destroy dmca" do
    assert_difference('Dmca.count', -1) do
      delete dmca_url(@dmca)
    end

    assert_redirected_to dmcas_url
  end
end
