class StaticPagesController < ApplicationController
  def home
  end

  def table
    @char0 = Character.new()
  end
  
end
