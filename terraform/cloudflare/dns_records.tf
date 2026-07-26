variable "home_ip" {
  type        = string
  description = "My home network public IP"
  sensitive   = true
}

resource "cloudflare_dns_record" "apex" {
  content  = var.home_ip
  name     = "khider.fr"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "935f13b73c1d137163ea96517e12fcb6"
  settings = {}
}

resource "cloudflare_dns_record" "authentik" {
  content = "khider.fr"
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
  content = "khider.fr"
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
  content = "khider.fr"
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
  content = "khider.fr"
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

resource "cloudflare_dns_record" "torrent" {
  content = "khider.fr"
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

resource "cloudflare_dns_record" "mx_amir" {
  content  = "amir.mx.cloudflare.net"
  name     = "khider.fr"
  priority = 64
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "935f13b73c1d137163ea96517e12fcb6"
  settings = {}
}

resource "cloudflare_dns_record" "mx_linda" {
  content  = "linda.mx.cloudflare.net"
  name     = "khider.fr"
  priority = 38
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "935f13b73c1d137163ea96517e12fcb6"
  settings = {}
}

resource "cloudflare_dns_record" "mx_isaac" {
  content  = "isaac.mx.cloudflare.net"
  name     = "khider.fr"
  priority = 77
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "935f13b73c1d137163ea96517e12fcb6"
  settings = {}
}

resource "cloudflare_dns_record" "dkim" {
  content  = "\"v=DKIM1; h=sha256; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiweykoi+o48IOGuP7GR3X0MOExCUDY/BCRHoWBnh3rChl7WhdyCxW3jgq1daEjPPqoi7sJvdg5hEQVsgVRQP4DcnQDVjGMbASQtrY4WmB1VebF+RPJB2ECPsEDTpeiI5ZyUAwJaVX7r6bznU67g7LvFq35yIo4sdlmtZGV+i0H4cpYH9+3JJ78k\" \"m4KXwaf9xUJCWF6nxeD+qG6Fyruw1Qlbds2r85U9dkNDVAS3gioCvELryh1TxKGiVTkg4wqHTyHfWsp7KD3WQHYJn0RyfJJu6YEmL77zonn7p2SRMvTMP3ZEXibnC9gz3nnhR6wcYL8Q7zXypKTMD58bTixDSJwIDAQAB\""
  name     = "cf2024-1._domainkey.khider.fr"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "935f13b73c1d137163ea96517e12fcb6"
  settings = {}
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
