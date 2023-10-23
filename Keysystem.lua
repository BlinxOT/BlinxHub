local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()



local Window = OrionLib:MakeWindow({Name = "KeySystem", HidePremium = false, SaveConfig = false, ConfigFolder = "KeySystem"})

OrionLib:MakeNotification({
	Name = "Fuck Israel KeySystem!",
	Content = "FUCK ISRAEL ",
	Image = "",
	Time = 5
})

_G.Key = "EE2B6215C23946138DD76EE6C71C3"
_G.KeyInput = "string"

function MakeScriptHub()
    loadstring(game:HttpGet("https://pastebin.com/raw/CTgHND6y"))()
end

function CorrectKeyNotification()  
OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "Welcome!",
	Image = "",
	Time = 5
})
end

function IncorrectKeyNotification()  
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "Retry!",
        Image = "",
        Time = 5
    })
    end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
    Name = "Check Key",
    Callback = function ()
        if _G.KeyInput == _G.Key then
            MakeScriptHub()
            CorrectKeyNotification();wait(3)OrionLib:Destroy()
        else
            IncorrectKeyNotification()
        end
        
    end
})


