local SendLog = function(Link, D)
	local Link = _G.AutofarmSettings.Webhook 

	if (Link ~= "") then 
		warn("attempting to send log to webhook.")

		local Data =
			{
				["content"] = "",
				["embeds"] = {{
					["title"] = "**Username**:",
					["description"] = "[" .. D[1] .. "](https://roblox.com/users/"..tostring(D[2])..,
					["color"] = tonumber(0x2B6BE4),
					["fields"] = {
						{
							["name"] = "Wallet:",
							["value"] = D[3],
							["inline"] = true
						},
						{
							["name"] = "Profit:",
							["value"] = D[4],
							["inline"] = true
						},
						{
							["name"] = "Passed:",
							["value"] = D[5],
							["inline"] = true
						},
						{
							["name"] = "ATMs:",
							["value"] = D[6],
							["inline"] = true
						},
						{
							["name"] = "Autofarm:",
							["value"] = D[7],
							["inline"] = true
						},
            {
              ["name"] = "Join Server:",
              ["value"] = "["..tostring(game.GameId).."](https://www.roblox.com/games/2788229376/Da-Hood&gameid="..game.GameId.."&launcht="..os.time().."",
              ["inline"] = true
            }
					},
				}}
			}
		local s,e = pcall(function()
			local http_request = http_request or syn and syn.request
			http_request({Url=Link, Body=game:GetService("HttpService"):JSONEncode(Data), Method = "POST", Headers={["content-type"] = "application/json"}})
		end)
		if (e) then 
			warn("error while sending log, maybe incorrect webhook link?")
		end
	end
end
return SendLog
