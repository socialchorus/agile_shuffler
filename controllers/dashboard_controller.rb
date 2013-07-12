require 'sinatra'
class DashboardController
  def show
    Dev.all
  end
end