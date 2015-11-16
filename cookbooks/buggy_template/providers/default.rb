def load_current_resource
  new_resource.name
  new_resource.string
  new_resource.number
end

action :create do
  puts "\n\n#{new_resource.to_hash}"
  template new_resource.name do
    source 'nail.erb'
    variables new_resource.to_hash
  end
end
