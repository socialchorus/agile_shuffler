dashboard_controller = DashboardController.new
get '/dashboard' do
  dashboard_controller.show
end