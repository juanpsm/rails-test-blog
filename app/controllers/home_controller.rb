# file name in snake_case and class name in PascalCase
# class must be a subclass of ApplicationController in order to be a controller
class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  end
end
