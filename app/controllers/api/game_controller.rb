class Api::GameController < ApplicationController
  def name
    @name = params[:name].upcase
    if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end

    render "name.json.jb"
  end

  def guess_number
    @number = params[:number].to_i
    if @number < 78
      @message = "Too Low"
    elsif @number > 78
      @message = "Too High"
    elsif @number == 78
      @message = "You win!"
    end
    render "number.json.jb"
  end
end
