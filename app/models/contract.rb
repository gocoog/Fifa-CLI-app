class Contract < ActiveRecord::Base
    belongs_to :team
    belongs_to :player

end
  