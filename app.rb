require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/:shape") do
  shapes = ["rock", "paper", "scissors"]

  @user_choice = params.fetch("shape")
  
  @comp_choice = shapes.sample

  if @comp_choice == @user_choice
    @result = "tied"
  elsif @comp_choice == "paper" && @user_choice == "rock"
    @result = "lost"
  elsif @comp_choice == "paper" && @user_choice == "scissors"
    @result = "won"
  elsif @comp_choice == "rock" && @user_choice == "scissors"
    @result = "lost"
  elsif @comp_choice == "rock" && @user_choice == "paper"
    @result = "won"
  elsif @comp_choice == "scissors" && @user_choice == "paper"
    @result = "lost"
  else
    @result = "won"
  end
  
  erb(:moves)
  
end
