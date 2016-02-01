module Mutantcorp
  module Mutant
    class Mutant
      ATTRIBUTE_NAMES = [:real_name, :mutant_name, :power]

      def self.attribute_names
        ATTRIBUTE_NAMES
      end

      attr_accessor *ATTRIBUTE_NAMES

      def description
        "#{mutant_name} (also known as #{real_name}) has an incredible power: #{power}."
      end

      def attributes
        attribute_collection = {}
        ATTRIBUTE_NAMES.each do |attribute_name|
          attribute_collection[attribute_name] = send(attribute_name)
        end
        attribute_collection
      end
    end
  end
end
