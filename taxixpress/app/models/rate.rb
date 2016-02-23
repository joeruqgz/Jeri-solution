class Rate < ActiveRecord::Base
    
    #scope by_origin  order(:origin)
    default_scope { order(origin: :asc) }
    
    def name_rute
        "#{origin} » #{destination} (S/. #{amount})"
    end    
end
