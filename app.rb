require "sinatra"
require "sinatra/reloader"

get("/") do
  erb :index
end

get("/process_roll") do
  @num_dice = 2

  @sides = 4

  @rolls = []

  @num_dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

  erb(:flexible)
end
