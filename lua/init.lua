local parser = require("argparse")()

parser:argument("url")
local args = parser:parse()

local curl = require("rest.curl")
print(curl:get({ url = args.url }))
