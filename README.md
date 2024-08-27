# Iku Custom Autofarm
Credits to the people at [iku](https://discord.gg/iku) for the [original script](https://github.com/applless/RandomScripts/blob/main/IkuAutofarm)

## loadstring
```lua
_G.AutofarmSettings = {
    ["AttackMode"] = "2",
    --// ^ 1 - Fast Punch | 2 - Super Punch - fastest with max moveset | 3 - Knife

    ["Fps"] = "10",
    --// ^ Wouldnt recommend going below 5. ^

    ["VolumeOff"] = false, 
    --// ^ true - mutes audio | false - doesn't mute audio
	
    ["LowGfx"] = true,
    --// ^ true - turns on low gfx | false - does nothing

    ["ForceResetOnKO"] = true,
    --// ^ true - resets on KO | false - does nothing :(

    ["ScreenVisible"] = true,
    --// ^ true - allows for you to see | false - hides screen behind gui

    ["Codes"] = {
    }, 
    --// ^ (optional) Codes that will be automatically claimed. ^

    ["Webhook"] = "",
    --// ^ (optional) Webhook link that logs will be sent to. ^
    
    ["LogInterval"] = "2",
    --// ^ How often the logs will be sent in minutes.
    
    ["Credits"] = "iku autofarm - by @trans | editted by benz.zip/benzonati"
    --// ^ credits. don't remove or the script won't work
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/imightknoiw/iku-custom-autofarm/main/main.lua'))()
```

my server (has more scripts): https://discord.gg/gXTr9MqT3a
