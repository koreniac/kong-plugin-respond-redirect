
local redirect_to = require "kong.plugins.respond-redirect.redirect_to"
local BasePlugin = require "kong.plugins.base_plugin"

-- local is_body_transform_set = header_transformer.is_body_transform_set
-- local is_json_body = header_transformer.is_json_body



local RespondRedirectHandler = BasePlugin:extend()

function RespondRedirectHandler:new()
    RespondRedirectHandler.super.new(self, "RespondRedirect")
end



function RespondRedirectHandler:header_filter(conf)
    redirect_to.redirect_to(conf)
  end

-- function ResponseTransformerHandler:header_filter(conf)
--   header_transformer.transform_headers(conf, kong.response.get_headers())
-- end


-- function ResponseTransformerHandler:body_filter(conf)
--   if is_body_transform_set(conf) and is_json_body(kong.response.get_header("Content-Type")) then
--     local ctx = ngx.ctx
--     local chunk, eof = ngx.arg[1], ngx.arg[2]

--     ctx.rt_body_chunks = ctx.rt_body_chunks or {}
--     ctx.rt_body_chunk_number = ctx.rt_body_chunk_number or 1

--     if eof then
--       local chunks = concat(ctx.rt_body_chunks)
--       local body = body_transformer.transform_json_body(conf, chunks)
--       ngx.arg[1] = body or chunks

--     else
--       ctx.rt_body_chunks[ctx.rt_body_chunk_number] = chunk
--       ctx.rt_body_chunk_number = ctx.rt_body_chunk_number + 1
--       ngx.arg[1] = nil
--     end
--   end
-- end


RespondRedirectHandler.PRIORITY = 1800
RespondRedirectHandler.VERSION = "1.0.0"


return RespondRedirectHandler
