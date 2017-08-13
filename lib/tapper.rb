require "tapper/version"

module Tapper
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def method_added(name)
      return if private_method_defined?(name) || /_tap/.match(name.to_s) || method_defined?("#{name}_without_tap")

      method = <<-EOS
        def #{name}_tap
          tap { #{name}_without_tap }
        end
      EOS

      self.class_eval(method)

      aliased_method = "alias #{name}_without_tap #{name}"
      self.class_eval(aliased_method)

      aliased_method = "alias #{name} #{name}_tap"
      self.class_eval(aliased_method)
    end
  end
end
