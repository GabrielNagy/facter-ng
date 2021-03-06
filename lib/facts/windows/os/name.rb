# frozen_string_literal: true

module Facter
  module Windows
    class OsName
      FACT_NAME = 'os.name'

      def call_the_resolver
        fact_value = Resolvers::Kernel.resolve(:kernel)

        ResolvedFact.new(FACT_NAME, fact_value)
      end
    end
  end
end
