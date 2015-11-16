actions :create
default_action :create

attribute :name, name_attribute: true

attribute :string, kind_of: String, default: 'spork'
attribute :number, kind_of: Fixnum, default: 404

def initialize(*args)
  super
  @action = :create
end
