# frozen_string_literal: true

require_relative "rails/version"
require_relative "rails/routes"

# Todo
module Ant
  module Design
    module Rails
      class Error < StandardError; end

      def self.hi(language)
        puts "Todo: Hi #{language}"
      end
    end
  end
end

