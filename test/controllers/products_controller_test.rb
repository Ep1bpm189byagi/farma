require "test_helper"

Class ProductsControllertest < ActionDispatch::IntegrationTest

  test "render a list of products" do
    get products_path

    assert_response :success
    assert_select ".product", 2
  end
  
  test "render a detailed product page" do
    get product_path (products(:infacare))

    assert_response :success
    assert_select ".title", "infacare"
    assert_select ".description", "formula con hierro para lactantes"
    assert_select "price", "50"
  end  
end  