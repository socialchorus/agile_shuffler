require 'spec_helper'

describe 'router' do
  describe '/dashboard' do
    it 'should call show on the dashboard controller' do
      DashboardController.any_instance.should_receive :show
      get '/dashboard'
    end
  end
end