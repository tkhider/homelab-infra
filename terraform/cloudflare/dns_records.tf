resource "cloudflare_dns_record" "apex" {
  content = "20f038fb-c555-46f7-b954-193b8144d5c5.cfargotunnel.com"
  name    = "khider.fr"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "935f13b73c1d137163ea96517e12fcb6"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "authentik" {
  content = "20f038fb-c555-46f7-b954-193b8144d5c5.cfargotunnel.com"
  name    = "authentik.khider.fr"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "935f13b73c1d137163ea96517e12fcb6"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "cloud" {
  content = "20f038fb-c555-46f7-b954-193b8144d5c5.cfargotunnel.com"
  name    = "cloud.khider.fr"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "935f13b73c1d137163ea96517e12fcb6"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "jellyfin" {
  content = "20f038fb-c555-46f7-b954-193b8144d5c5.cfargotunnel.com"
  name    = "jellyfin.khider.fr"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "935f13b73c1d137163ea96517e12fcb6"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "sonarr" {
  content = "20f038fb-c555-46f7-b954-193b8144d5c5.cfargotunnel.com"
  name    = "sonarr.khider.fr"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "935f13b73c1d137163ea96517e12fcb6"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "stats" {
  content = "20f038fb-c555-46f7-b954-193b8144d5c5.cfargotunnel.com"
  name    = "stats.khider.fr"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "935f13b73c1d137163ea96517e12fcb6"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "torrent" {
  content = "20f038fb-c555-46f7-b954-193b8144d5c5.cfargotunnel.com"
  name    = "torrent.khider.fr"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "935f13b73c1d137163ea96517e12fcb6"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "www" {
  content = "khider.fr"
  name    = "www.khider.fr"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "935f13b73c1d137163ea96517e12fcb6"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "dmarc" {
  content  = "v=DMARC1;  p=none; rua=mailto:7064b754017b4286b42f04f703180c18@dmarc-reports.cloudflare.net"
  name     = "_dmarc.khider.fr"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "935f13b73c1d137163ea96517e12fcb6"
  settings = {}
}

resource "cloudflare_dns_record" "spf" {
  content  = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  name     = "khider.fr"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "935f13b73c1d137163ea96517e12fcb6"
  settings = {}
}

removed {
  from = cloudflare_dns_record.mx_amir
  lifecycle {
    destroy = false
  }
}

removed {
  from = cloudflare_dns_record.mx_linda
  lifecycle {
    destroy = false
  }
}

removed {
  from = cloudflare_dns_record.mx_isaac
  lifecycle {
    destroy = false
  }
}

removed {
  from = cloudflare_dns_record.dkim
  lifecycle {
    destroy = false
  }
}
