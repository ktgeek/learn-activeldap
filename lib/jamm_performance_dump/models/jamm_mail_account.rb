class JammMailAccount < ActiveLdap::Base
  # The build in delete method of an ActiveLDAP object interferes with the attribute delete.
  alias :ldap_delete :delete
  undef_method :delete

  ldap_mapping dn_attribute: 'mail', classes: ['top', 'JammMailAccount'], scope: :sub, prefix: ''

  # Needs a belongs_to for domain?
end
