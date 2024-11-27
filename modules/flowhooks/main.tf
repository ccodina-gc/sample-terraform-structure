locals {
  # Flatten the configuration into a list of objects for easier iteration
  tmp_config = flatten([
    for env, flowhooks in var.flow_hook_config : [
      for each_flowhook, each_flowhook_data in flowhooks :
      [{
        flow_hook_point = each_flowhook
        sharedflow      = each_flowhook_data.sharedflow
        description     = each_flowhook_data.description
        environment     = env
      }]
  ]])

  # Create a map where the key is a combination of environment and flow_hook_point
  flow_hook_config = {
    for k, v in local.tmp_config : "${v.environment}_${v.flow_hook_point}" => v
  }
}

resource "google_apigee_flowhook" "[RESOURCE]" {
  for_each          = local.flow_hook_config
  environment       = each.value.environment
  org_id            = var.gcp_project_id
  flow_hook_point   = each.value.flow_hook_point
  sharedflow        = each.value.sharedflow
  description       = each.value.description
  continue_on_error = true

  # Ensure flow hooks are replaced rather than destroyed and recreated
  lifecycle {
    create_before_destroy = true
  }

}

# Optional output to verify the configuration
output "flow_hook_config" {
  value = local.flow_hook_config
}