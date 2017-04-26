class DataController < ApplicationController
  require 'rubygems'
  require 'open-uri'
  require 'nokogiri'

  def index
    
  end

  def scrape
     @value = params[:search]
     @data = Array.new
     @images = Array.new
     @content =Array.new
     @value = params[:search]
    if @value == nil
      
    else

    
    url = "http://tratu.soha.vn/dict/en_vn/"+ params[:search]
    doc = Nokogiri::HTML(open(url))
    
      @data = doc.css("div#content-5 h5")
      

     uri = URI("https://www.google.com.vn/search?q="+params[:search]+"&source=lnms&tbm=isch&sa=X&ved=0ahUKEwiap--IsMHTAhVHvLwKHd9qAgoQ_AUICCgB&biw=1366&bih=591")
     scrap_image = Nokogiri::HTML(open(uri))
     @images = scrap_image.css("img.rg_ic rg_i")
    
    @content << { :data => @data, :image => @images }
    end
    
  end
end




  





  
