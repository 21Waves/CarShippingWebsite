class User
  include DataMapper::Resource
  
  property :id, Serial
  property :name, String
  property :email, String, format: :email_address
  property :phone, String
  property :street_1, String
  property :street_2, String
  property :city, String
  property :county, String
  property :post_code, String
  property :country, String
  
end

class Quote
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :email, String, format: :email_address
  property :make, String
  property :model, String
  property :engine_cc, Integer
  property :cbm, Integer # Cubic Meters (Vloume)
  property :gvw, Integer # Gross Vehicle Weight in Kilograms
  property :seats, Integer
  property :body_type, String
  property :fuel_type, Flag[:petrol, :diesel, :electric, :lpg], default: :petrol # Petrol, Diesel, Electric, LPG
  property :drive_config, String # 4x4, 2x4, etc
  property :destination_port, String
  property :origin_port, String
  property :cost_value, Integer
  
end

class Uploads
  include DataMapper::Resource
  
  property :id, Serial
  property :doc_name, String
  property :doc_url, String
  
  # def timestamps(created_at= '', updated_at='')
  #   property :created_at, DateTime, default: Time.now
  #   property :updated_at, DateTime, default: nil
  # end
end

class Post
  include DataMapper::Resource
  
  property :id, Serial
  property :title, String
  property :slug, String
  property :body, Text
  property :published, Boolean
  property :status, Flag[:draft, :draft_preview]
end

class Page
  attr_accessor :title, :slug, :body, :updated_on, :tags, :category, :author
  
  def initialize(title, slug, body, created_on= Time.now, tags, category, author)
    @title      = title     
    @slug       = slug      
    @body       = body
    @tags       = tags      
    @category   = category  
    @author     = author    
  end
  
  # Create a file if !exists?, otherwise update the contents by appending comments in bold.
  def create
    Dir.glob('./views/pages/*.erb') do |page|
    
    end
  end
  
end
