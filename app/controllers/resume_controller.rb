class ResumeController < ApplicationController
  
  def index
    respond_to do |format|
      format.html { render :status => 404 }
      # format.rtf  { render :file => "error/404", :status => 404 }
      format.text { render :status => 404 }
      format.txt  { render :status => 404 }
      # format.xml  { render :xml => @reference, :status => :created, :location => @reference }
    end
  end
  
end
