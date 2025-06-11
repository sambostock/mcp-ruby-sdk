# typed: strict
# frozen_string_literal: true

module MCP
  Prompt = Data.define(:name, :description, :arguments) do
    attr_reader :to_h

    class << self
      def define(...) = new(...)
      private :new

      private

      def inherited(subclass)
        super
        raise TypeError, "#{self} should no longer be subclassed. Use #{self}.define factory method instead."
      end
    end

    def initialize(name:, description:, arguments:, &block)
      arguments = arguments.map { |arg| Hash === arg ? Argument.new(**arg) : arg }

      @block = block
      @to_h = { name:, description:, arguments: arguments.map(&:to_h) }.compact.freeze

      super(name:, description:, arguments:)
    end

    def call(args, server_context:) = @block.call(args, server_context:)
  end
end
