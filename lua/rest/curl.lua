local curl = require("cURL")
local json = require("cjson")

local Curl = {}

function Curl:get(opts)
	local c = curl.easy()
	local body = {}
	c:setopt_url(opts.url)
	c:setopt_netrc(true)
	c:setopt_writefunction(table.insert, body)
	c:perform()
	c:close()
	return json.decode(table.concat(body))
end

return Curl
