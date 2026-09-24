resource "cloudflare_zero_trust_tunnel_cloudflared_config" "homelab" {
  account_id = "b3feeccbd92acbd9415cb3add60d6826"
  tunnel_id  = "20f038fb-c555-46f7-b954-193b8144d5c5"

  config = {
    ingress = [
      {
        hostname = "khider.fr"
        service  = "https://traefik.traefik.svc.cluster.local:443"
        origin_request = {
          origin_server_name = "khider.fr"
        }
      },
      {
        hostname = "www.khider.fr"
        service  = "https://traefik.traefik.svc.cluster.local:443"
        origin_request = {
          origin_server_name = "www.khider.fr"
        }
      },
      {
        service = "http_status:404"
      }
    ]
  }
}
