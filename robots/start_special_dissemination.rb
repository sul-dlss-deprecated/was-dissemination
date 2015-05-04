module Robots
  module DorRepo
    module WasDissemination
      class StartSpecialDissemination
        include LyberCore::Robot

        def initialize
          super('dor', 'wasDisseminationWF', 'start-special-dissemination')
        end

        # `perform` is the main entry point for the robot. This is where
        # all of the robot's work is done.
        #
        # @param [String] druid -- the Druid identifier for the object to process
        def perform(druid)
          druid_obj = Dor::Item.find(druid)
        end
      end

    end
  end
end