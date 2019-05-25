require 'test_helper'

class BuscaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get busca_index_url
    assert_response :success
  end

end
