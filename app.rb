require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  shapes = ["rock", "paper", "scissors"]
  @user_choice = "rock"

  @comp_choice = shapes.sample

  if @comp_choice == "rock"
    @result = "tied"
  elsif @comp_choice == "paper"
    @result = "lost"
  else
    @result = "won"
  end
  
  erb(:moves)
  
end

get("/paper") do
  shapes = ["rock", "paper", "scissors"]

  @user_choice = "paper"
  
  @comp_choice = shapes.sample

  if @comp_choice == "rock"
    @result = "won"
  elsif @comp_choice == "paper"
    @result = "tied"
  else
    @result = "lost"
  end
  
  erb(:moves)
end

get("/scissors") do
  shapes = ["rock", "paper", "scissors"]

  @user_choice = "scissors"
  
  @comp_choice = shapes.sample

  if @comp_choice == "rock"
    @result = "lost"
  elsif @comp_choice == "paper"
    @result = "won"
  else
    @result = "tied"
  end
  
  erb(:moves)
end
