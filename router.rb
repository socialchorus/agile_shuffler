dashboard_controller = DashboardController.new
get '/dashboard' do
  @devs = dashboard_controller.show
  erb :dashboard
end