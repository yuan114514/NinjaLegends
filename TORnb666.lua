local library = loadstring(game:HttpGet("https://pastebin.com/raw/WME4s0kY", true))()
 
local example = library:CreateWindow({
	text = "Autom芍tico"
})
 
local island = library:CreateWindow({
	text = "Teletransportacion"
})
 
local eggs = library:CreateWindow({
	text = "Cristal El谷ctro"
})
 
 
local credits= library:CreateWindow({text='Creditos'})
credits:AddLabel("Nastya Zhidkova")
 
example:AddToggle("Orbitas Automaticas",function(state)
	_G.Farm = (state and true or false)
	wait()
	while _G.Farm == true do
		wait()
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
	end
end)
 
example:AddToggle("Aros",function(state)
	_G.Hoops = (state and true or false)
	wait()
	while _G.Hoops == true do
		wait()
		local children = workspace.Hoops:GetChildren()
		for i, child in ipairs(children) do
			if child.Name == "Hoop" then
				child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			end
		end
	end
end)
 
 
example:AddToggle("Renacimientos",function(state)
	_G.Rebirth = (state and true or false)
	wait()
	while _G.Rebirth == true do
		wait()
		game.ReplicatedStorage.rEvents.rebirthEvent:FireServer("rebirthRequest")
	end
end)
 
island:AddButton("Lobby", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(230.91, 646.90, -207.17))
end)
 
island:AddButton("Aro Amarillo", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3377.84, 259.13, 16938.03))
end)
 
island:AddButton("Cristal Electro", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-10682.54, 616.92, 4.86))
end)
 
island:AddButton("Escondite", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1945.77, 53.62, 2130.74))
end)
 
 
island:AddButton("Carrera", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2053.67, 71.93, 17943.08))
end)
 
eggs:AddToggle("Cristal Electro",function(state)
	_G.BestEgg = (state and true or false)
	wait()
	while _G.BestEgg == true do
		wait()
		game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Crystal")
	end
end)
 
eggs:AddToggle("Cristal Desierto",function(state)
	_G.BestEgg = (state and true or false)
	wait()
	while _G.BestEgg == true do
		wait()
		game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", "Desert Crystal")
	end
end)
 
example:AddDestroy("Destroy GUI",function()
	library.gui:Destroy()
end)
