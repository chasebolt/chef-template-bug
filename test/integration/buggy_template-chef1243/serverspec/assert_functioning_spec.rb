require 'serverspec'

set :backend, :exec

describe file('/hammer') do
  its(:content) { should match /hello 404;/ }
end
