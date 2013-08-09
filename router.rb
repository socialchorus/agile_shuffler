dashboard_controller = DashboardController.new
get '/dashboard' do
  @devs = dashboard_controller.show
  erb :dashboard
end

get '/devs.json' do
  content_type :json
  dashboard_controller.show.map(&:values).to_json
end