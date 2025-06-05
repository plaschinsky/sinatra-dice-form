require "sinatra"
require "sinatra/reloader"

get("/") do
  erb :index
end

get("/process_roll") do
  @dice = params[:dice].to_i
  @sides = params[:sides].to_i
  @results = Array.new(@dice) { rand(1..@sides) }

  erb :index
end
