# todos_controller.rb
class UsersController < ApplicationController#::Base
  skip_before_action :verify_authenticity_token
  def index
    render plain: "Hello, this is users!"
    render plain: Users.all.to_a
    #render plain: Users.order(:name).map {|user| user.to_pleasant_user}.join("\n")
  end
end

