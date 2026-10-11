resource "google_clouddeploy_target_iam_policy" "clouddeploy_target_iam_policies" {
  for_each = var.clouddeploy_target_iam_policies

  name        = each.value.name
  policy_data = each.value.policy_data
  location    = each.value.location
  project     = each.value.project
}

