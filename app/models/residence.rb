class Residence < ActiveRecord::Base
  belongs_to :city, touch: true


	


	after_initialize do |residence|
		puts "You have initialized an object!"
  end
 
  after_find do |residence|
    puts "You have found an object!"
  end


  after_touch do |residence|
    puts "You have touched an object"
  end



  def after_destroy(residence)
    if File.exist?(residence.filepath)
      File.delete(residence.filepath)
    end
  end

  after_destroy :log_destroy_action
 
    def log_destroy_action
      puts 'Residences destroyed'
    end

  
  after_touch do
    puts 'A Residence exists'
  end









end





