class Jt2jt2 < ApplicationRecord
	 validates :content, length: { in: 1..140 } 
end
