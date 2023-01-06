require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_project = api_v1_projects(:one)
  end

  test "should get index" do
    get api_v1_projects_url, as: :json
    assert_response :success
  end

  test "should create api_v1_project" do
    assert_difference("Project.count") do
      post api_v1_projects_url, params: { api_v1_project: { description: @api_v1_project.description, end_date: @api_v1_project.end_date, start_date: @api_v1_project.start_date, status: @api_v1_project.status, title: @api_v1_project.title } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_project" do
    get api_v1_project_url(@api_v1_project), as: :json
    assert_response :success
  end

  test "should update api_v1_project" do
    patch api_v1_project_url(@api_v1_project), params: { api_v1_project: { description: @api_v1_project.description, end_date: @api_v1_project.end_date, start_date: @api_v1_project.start_date, status: @api_v1_project.status, title: @api_v1_project.title } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_project" do
    assert_difference("Project.count", -1) do
      delete api_v1_project_url(@api_v1_project), as: :json
    end

    assert_response :no_content
  end
end
