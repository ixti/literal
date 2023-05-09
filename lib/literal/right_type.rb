class RightType
	def initialize(type)
		@type = type
	end

	def ===(left)
		case left
		when Literal::Right
			@type === left.value
		else
			false
		end
	end

	def new(value)
		case value
		when @type
			Literal::Right.new(value)
		else
			raise Literal::TypeError,
				"Expected `#{value.inspect}` to be `#{@type.inspect}`."
		end
	end
end
