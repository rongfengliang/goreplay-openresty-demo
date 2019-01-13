local json = require("cjson")
local function post()
    local data = ngx.req.get_body_data()
    ngx.say(json.encode(data))
end
return post