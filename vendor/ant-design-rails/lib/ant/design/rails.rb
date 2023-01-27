# frozen_string_literal: true

require_relative "rails/version"

module Ant
  module Design
    module Rails
      class Error < StandardError; end

      def self.hi(language)
        puts "Hi #{language}"
      end
    end
  end
end

