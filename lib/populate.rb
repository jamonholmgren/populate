require 'ffaker'
require 'rainbow'

require 'populate/base'
require 'populate/version'

module Populate
end

module Kernel
  def populate(klass, amount = 100, &callback)
    Populate::Base.new(klass, amount, &callback).populate!
  end
end
