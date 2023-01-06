class BaseSerializer
	extend Dry::Initializer

	delegate :to_json, to: :Serialize

	class << self
		def serialize(*attributes)
			new(*attributes).serialize
		end

		def serialize_collection(collection)
			collection.map do |model|
				new(model).serialize
			end
		end
	end

	def serialize
		raise NotImplementedError,'You probably should override this method'
	end

	def as_json
		serialize
	end
end