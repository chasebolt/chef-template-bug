def load_current_resource
  new_resource.name
  new_resource.string
  new_resource.number
end

action :create do
  puts "\n\nnumber: #{new_resource.number}"
  puts "\n\nhash: #{new_resource.to_hash}"
  template new_resource.name do
    source 'nail.erb'
    variables new_resource.to_hash
  end
end
