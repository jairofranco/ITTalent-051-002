require 'test_helper'

class PublicServantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_servant = public_servants(:one)
  end

  test "should get index" do
    get public_servants_url
    assert_response :success
  end

  test "should get new" do
    get new_public_servant_url
    assert_response :success
  end

  test "should create public_servant" do
    assert_difference('PublicServant.count') do
      post public_servants_url, params: { public_servant: { age: @public_servant.age, document: @public_servant.document, name: @public_servant.name, period: @public_servant.period, position: @public_servant.position, salary: @public_servant.salary } }
    end

    assert_redirected_to public_servant_url(PublicServant.last)
  end

  test "should show public_servant" do
    get public_servant_url(@public_servant)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_servant_url(@public_servant)
    assert_response :success
  end

  test "should update public_servant" do
    patch public_servant_url(@public_servant), params: { public_servant: { age: @public_servant.age, document: @public_servant.document, name: @public_servant.name, period: @public_servant.period, position: @public_servant.position, salary: @public_servant.salary } }
    assert_redirected_to public_servant_url(@public_servant)
  end

  test "should destroy public_servant" do
    assert_difference('PublicServant.count', -1) do
      delete public_servant_url(@public_servant)
    end

    assert_redirected_to public_servants_url
  end
end
