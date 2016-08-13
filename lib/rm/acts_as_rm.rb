module Rm
  module ActsAsRm
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def acts_as_rm(value_field = :value, count_field = :repeat_count)
        cattr_accessor :value_field, :count_field

        self.value_field = value_field
        self.count_field = count_field
        include Rm::ActsAsRm::LocalInstanceMethods
      end
    end

    module LocalInstanceMethods
      def rm
        self.send(self.class.value_field) * self.send(self.class.count_field)
      end
    end
  end
end

ActiveRecord::Base.send :include, Rm::ActsAsRm
