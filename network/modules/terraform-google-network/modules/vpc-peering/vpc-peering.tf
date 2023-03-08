resource "google_compute_network_peering" "create-peering-in-network-1" {
  name                 = var.peering_name_1
  network              = var.vpc_peering_network_link_1 // The primary network of the peering.
  peer_network         = var.vpc_peering_network_link_2 // The peer network in the peering. The peer network may belong to a different project.
  export_custom_routes = var.export_custom_routes_1
  import_custom_routes = var.import_custom_routes_1

  export_subnet_routes_with_public_ip = var.export_subnet_routes_with_public_ip_1
  import_subnet_routes_with_public_ip = var.import_subnet_routes_with_public_ip_1 //auto_create_routes = var.enable_auto_create_routes
}

resource "google_compute_network_peering" "create-peering-in-network-2" {
  name                 = var.peering_name_2
  network              = var.vpc_peering_network_link_2
  peer_network         = var.vpc_peering_network_link_1
  export_custom_routes = var.export_custom_routes_2
  import_custom_routes = var.import_custom_routes_2

  export_subnet_routes_with_public_ip = var.export_subnet_routes_with_public_ip_2
  import_subnet_routes_with_public_ip = var.import_subnet_routes_with_public_ip_2
  //auto_create_routes = var.enable_auto_create_routes
}