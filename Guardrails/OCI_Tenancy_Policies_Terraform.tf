############################################################
# OCI – STRICT TENANCY GUARDRAILS (LAYER 1)
############################################################

# Deny creation of public object storage buckets
resource "oci_identity_policy" "deny_public_buckets" {
  compartment_id = var.tenancy_ocid
  name           = "deny-public-buckets"

  statements = [
    "deny group AllUsers to manage object-family in tenancy where request.permission='OBJECT_CREATE' and target.bucket.public-access='ObjectRead'"
  ]
}

# Restrict regions to approved set
resource "oci_identity_policy" "allow_only_regions" {
  compartment_id = var.tenancy_ocid
  name           = "allowed-regions"

  statements = [
    "allow group Administrators to use regions in tenancy where request.region in ('us-phoenix-1','us-ashburn-1')"
  ]
}
