class SessionsController < ApplicationController

  def create
    writer = Writer.from_omniauth(env["omniauth.auth"])
    session[:writer_id] = writer.id
    redirect_to root_url
  end

  def destroy
    session[:writer_id] = nil
    redirect_to root_url
  end

end
