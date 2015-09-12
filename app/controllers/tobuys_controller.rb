class TobuysController < ApplicationController
  def index

  	@tobuy_items = Tobuy.all
  end

  def create
  	Tobuy.create(:tobuy_item => params[:tobuy_text])
  	

  	redirect_to :action => 'index'
  end
  
  def complete
  	params[:tobuys_checkbox].each do |check|
  		tobuy_id = check
  		t = Tobuy.find_by_id(tobuy_id)
  	    t.update_attribute(:completed, true)
  	end
  	redirect_to :action => 'index'
  end


  def delete
  	params[:tobuys_checkbox].each do |check|
  		tobuy_id = check
  		t = Tobuy.find_by_id(tobuy_id)
  		t.delete
  	end
  	redirect_to :action => 'index'
  	
  end
end
