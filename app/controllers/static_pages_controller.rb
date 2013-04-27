class StaticPagesController < ApplicationController
require 'will_paginate/array'
	skip_before_filter :require_login


  def home
    #@projects_all = Project.all

   @project = Project.all#@projects_all#.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')

@notice = Noticeboard.new

@user = User.new

end

  def help
  	
  end

  def about
    
  end

  def menu

  end
  
end
