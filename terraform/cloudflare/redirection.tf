resource "cloudflare_ruleset" "tarek_linkedin_redirect" {
  zone_id     = "935f13b73c1d137163ea96517e12fcb6"
  name        = "Redirect tarek to LinkedIn"
  description = "Redirects tarek.khider.fr traffic to LinkedIn profile"
  kind        = "zone"
  phase       = "http_request_dynamic_redirect"

  rules = [
    {
      ref         = "redirect_tarek_to_linkedin"
      description = "Redirect tarek.khider.fr to LinkedIn profile"
      expression  = "(http.host eq \"tarek.khider.fr\")"
      action      = "redirect"
      enabled     = true

      action_parameters = {
        from_value = {
          status_code           = 301
          preserve_query_string = false
          target_url = {
            value = "https://www.linkedin.com/in/tkhider/"
          }
        }
      }
    }
  ]
}
