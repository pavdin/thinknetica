module InstanceCounter
  def self.included(base)
    base.extend(ClassMethods)
    base.send :include, InstanceMethods
    base.instance_variable_set :@instances, 0
  end

  module ClassMethods
    attr_reader :instances

    def instances_count(instance)
      @instances += 1
    end
  end

  module InstanceMethods
   protected
    def register_instance
      self.class.send :instances_count
    end
  end
end
