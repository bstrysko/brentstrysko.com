class HomeController < ApplicationController
  def index
  end

  def about
  end

  def iresume
  	@resume_entries = ResumeEntry.all
  end
end
