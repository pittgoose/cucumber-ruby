require 'cucumber/platform'
if Cucumber::RUBY_1_9
  module Kernel
    # Backported from Ruby 2.0 to 1.9
    def Hash(other)
      return {} if other.nil? || other == []
      raise TypeError, "can't convert #{other.class} into Hash" unless other.respond_to?(:to_hash)
      other.to_hash
    end
  end
end
