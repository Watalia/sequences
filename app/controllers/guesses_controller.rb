class GuessesController < ApplicationController

  def  index
    # params={"first"=>"1", "second"=>"2", "third"=>"3", "controller"=>"guesses", "action"=>"temp"}
    @user_first_number=params["first"]
    @user_second_number=params["second"]
    @user_third_number=params["third"]

    @list = Guess.all

    g=Guess.new
    g.first_num = @user_first_number
    g.second_num = @user_second_number
    g.third_num = @user_third_number
    g.save

    render("index.html.erb")
  end

  def show_answer
    #params = {"q"=>"Increasing numbers"}

    @user_answer=params["q"]

    render("show_answer.html.erb")
  end

  def temp
    @params = params
  end

end
