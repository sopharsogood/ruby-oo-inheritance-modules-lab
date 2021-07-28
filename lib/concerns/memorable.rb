module Memorable
    module InstanceMethods
        def to_param
            name.downcase.gsub(' ', '-')
        end
    end

    module ClassMethods
        def reset_all
            self.all = []
        end
        
        def count
            self.all.count
        end
    end
end