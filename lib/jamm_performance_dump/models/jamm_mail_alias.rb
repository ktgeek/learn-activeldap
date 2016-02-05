class JammMailAlias < ActiveLdap::Base
  ldap_mapping dn_attribute: 'mail', classes: ['top', 'JammMailAlias'], scope: :sub, prefix: ''

#  belongs_to :domain, class_name: 'JammVirtualDomain', primary_key: 'jvd'
end
