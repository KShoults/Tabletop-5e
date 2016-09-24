class StaticPagesController < ApplicationController
  def home
  end

  def table
    system "~/workspace/*Frontend/app/assets/javainit.bash"
  end
end
