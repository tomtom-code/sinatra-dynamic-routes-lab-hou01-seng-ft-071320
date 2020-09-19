require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    result = ""
    @number.times {result << @phrase+"\n"}
    result
  end

end
