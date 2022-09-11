class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # All reviews
  get "/reviews" do 
    reviews = Review.all.order(:created_at)
    reviews.to_json
  end

  # To find all restaurants
  get "/restaurants" do 
    restaurants = Restaurant.all.order(:created_at)
    restaurants.to_json
  end

  # To find the review about a certain restaurant
  get "/restaurants/:id" do 
    restaurants = Restaurant.find(params[:id]).reviews 
    restaurants.to_json
  end

  # To find all the users
  get "/users" do
    users = User.all.order(:created_at)
    users.to_json
  end

  # To find the reviews a user has written
  get "/users/:id" do 
    users = User.find(params[:id]).reviews 
    users.to_json
  end

  # Adding a User
  post '/users' do 
    user = User.create(name: params[:name])
    user.to_json
  end

  # Adding a review
  post '/reviews' do 
    review = Review.create(user_id: params[:user_id], restaurant_id: params[:restaurant_id], score: params[:score], comment: params[:comment])
    review.to_json
  end

end
