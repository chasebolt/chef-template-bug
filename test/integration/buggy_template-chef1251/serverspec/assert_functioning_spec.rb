require 'serverspec'

set :backend, :exec

describe file('/hammer') do
  it { should exist }
  it { should contain 'hello 404;' }
end
