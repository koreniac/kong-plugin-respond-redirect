package = "kong-plugin-respond-redirect"
version = "0.10.0-1"
source = {
   url = "git+https://naruphon@gitlab.com/true-itsd/huawei-cloud/mvp/mpf/ni/aoc/kong-plugin-respond-redirect.git"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.respond-redirect.handler"] = "kong/plugins/respond-redirect/handler.lua",
      ["kong.plugins.respond-redirect.redirect_to"] = "kong/plugins/respond-redirect/redirect_to.lua",
      ["kong.plugins.respond-redirect.schema"] = "kong/plugins/respond-redirect/schema.lua"
   }
}
