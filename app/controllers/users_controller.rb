class UsersController<ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    #render plain: "Hello, this is users!"
    #render plain: Users.all.to_a
    render plain: Users.order(:name).map {|user| user.to_pleasant_user}.join("\n")
  end
  def show
    id = params[:id].to_i
    #render plain: "The id enter was #{id}"
    user= Users.find(id)
    render plain: user.to_pleasant
  end
  def create
    name = params[:name]
    email = params[:email]
    password = params[:password]
    #render plain: "You are in create user with  name: #{name} and email : #{email}"
    user=Users.create!(name: name, email: email, password:password)
    render_txt="User created with Id #{user.id}"
    render plain: render_txt
  end

  def login
    email = params[:email]
    password = params[:password]
    user= Users.find_by(email: email, password: password)
    render_txt = user ? "true" : "false"
    render plain: render_txt

  end
end
