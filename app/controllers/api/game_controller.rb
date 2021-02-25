class Api::GameController < ApplicationController
  def name
    @name = params[:name].upcase
    if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "That's a great name!"
    end

    render "name.json.jb"
  end

  def guess_number
    @number = params[:number].to_i
    correct_answer = 78

    if @number < correct_answer
      @message = "Too Low"
    elsif @number > correct_answer
      @message = "Too High"
    elsif @number == correct_answer
      @message = "You win!"
    end
    render "number.json.jb"
  end

  def body
    @name = params[:name]
    @number = params[:number]
    render "body.json.jb"
  end

  def secret
    @username = params[:username]
    @password = params[:password]
    if @username == "hugh" && @password == "swordfish"
      @message = "Valid Credentials"
    else
      @message = "Invalid Credentials"
    end
    render "secret.json.jb"
  end
end
