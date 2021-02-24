# frozen_string_literal: true

class SchoolDetailSerializer
  include JSONAPI::Serializer
  attributes :name, :emis, :centre_no, :matrics_details
end
