output "opensearch_users" {
  description = "List of OpenSearch users"
  value       = { for item in opensearch_user.users : item.username => item.description }
}
