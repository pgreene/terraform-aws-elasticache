output "arn" {
    value = aws_elasticache_cluster.general.arn
}

output "cache_nodes" {
    value = aws_elasticache_cluster.general.cache_nodes
}

output "configuration_endpoint" {
    value = aws_elasticache_cluster.general.configuration_endpoint
}

output "cluster_address" {
    value = aws_elasticache_cluster.general.cluster_address
}