class HelloController < ApplicationController
  def world
    render "index", :params => params
  end
end