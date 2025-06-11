# frozen_string_literal: true

module MCP
  Tool = Data.define(:name, :description, :input_schema, :annotations) do
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

    def initialize(name:, description: nil, input_schema: nil, annotations: nil, &block)
      input_schema = Tool::InputSchema.new(**input_schema) if Hash === input_schema
      annotations  = Tool::Annotations.new(**annotations)  if Hash === annotations
      raise ArgumentError, "Tool definition requires a block" unless block

      @block = block
      @to_h = {
        name:,
        description:,
        inputSchema: input_schema&.to_h,
        annotations: annotations&.to_h,
      }.compact.freeze

      super(name:, description:, input_schema:, annotations:)
    end

    def call(args, server_context:)
      @block.call(args, server_context:)
    end
  end
end
