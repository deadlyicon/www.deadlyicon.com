class ResumeController < ApplicationController
  
  def index
    respond_to do |format|
      format.html { redirect_to 'http://docs.google.com/View?id=dfk6v52k_55n5cjw9d7', :status => 301 }
      format.pdf  { redirect_to 'http://deadlyicon.github.com/resume.pdf', :status => 301 }
    end
  end
  
end
