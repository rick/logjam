require File.dirname(__FILE__) + '/../test_helper'
require 'summary_controller'

# Re-raise errors caught by the controller.
class SummaryController; def rescue_action(e) raise e end; end

class SummaryControllerTest < Test::Unit::TestCase
  fixtures :runs
  
  def setup
    @controller = SummaryController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_index
    get :index
    assert_response :success
    assert assigns(:title)
    assert assigns(:summary)
    assert assigns(:running)
    assert assigns(:good)
  end
end
