require "test_helper"

class PdfControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pdf_index_url
    assert_response :success
  end
end
