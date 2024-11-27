class HeaderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :path, :position, :component
end
