require 'acts-as-readable'
require 'reading'
#require 'user_with_readings'

ActiveRecord::Base.send :include, ActiveRecord::Acts::Readable
