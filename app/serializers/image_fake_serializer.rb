class ImageFakeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :path, :name, :typeImage, :url
end
