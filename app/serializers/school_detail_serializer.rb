class SchoolDetailSerializer
  include JSONAPI::Serializer
  attributes :name, :emis, :centre_no, :matrics_details
end
