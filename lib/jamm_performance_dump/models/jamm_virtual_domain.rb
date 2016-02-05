class JammVirtualDomain < ActiveLdap::Base
  # The build in delete method of an ActiveLDAP object interferes with the attribute delete.
  alias :ldap_delete :delete
  undef_method :delete

  ldap_mapping dn_attribute: 'jvd', classes: ['top', 'JammVirtualDomain'], scope: :sub, prefix: ''

#  has_many :aliases, foreign_key: 'mail', class_name: 'JammMailAlias', primary_key: 'mail'
#  has_many :accouts, foreign_key: 'mail', class_name: 'JammMailAccount', primary_key: 'mail'

  # needs a has_many for postmasters?
end
