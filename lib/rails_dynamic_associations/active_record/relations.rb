require 'active_support/concern'

module RailsDynamicAssociations::ActiveRecord
	module Relations
		extend ActiveSupport::Concern

		module ClassMethods
			{
				source: :to,
				target: :of,
			}.each &-> (association, method) do
				define_method "#{association}_relations" do
					Relation.send method, self
				end
			end
		end
	end
end
