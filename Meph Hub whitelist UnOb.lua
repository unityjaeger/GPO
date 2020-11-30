_G.MainColor = Color3.fromRGB(0,0,0)
_G.SecondaryColor = Color3.fromRGB(0,0,0)
_G.TertiaryColor = Color3.fromRGB(15, 15, 15)
_G.SliderColor = Color3.fromRGB(255,255,255)
_G.ButtonColor = Color3.fromRGB(255,255,255)
_G.ToggleColor = Color3.fromRGB(255,255,255)
_G.ArrowColor = Color3.fromRGB(255,255,255)
_G.MainTextColor = Color3.fromRGB(255,255,255)
_G.PointerColor = Color3.fromRGB(0,0,0)
_G.DraggerCircleColor = Color3.fromRGB(255,255,255)
_G.BindColor = Color3.fromRGB(255,255,255)

local http_request = http_request;
if syn then
    http_request = syn.request
elseif SENTINEL_V2 then
    function http_request(tb)
        return {
            StatusCode = 200;
            Body = request(tb.Url, tb.Method, (tb.Body or ''))
        }
    end
end

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"};
local hwid = "";
local whitelistedd = {"cc1c7f95cea7ca55d106eddcbad5f0537a4b81b15c56d02ab2ba83788f7775189d7f5d850dfa6c369027f4077612415b9d3f8ef2dc9349d43e3f87cdc3d89ec1", "f78eb376d7dd999ae22e0684af61d735d54e08a012044abb55a20489cf027ae7348c1947317c4ba83498938f610d367ca733392cf7ed0e62deeffd6e675d42ed", "138f77ce54891a3072bee1a8a9f28a75b261f749c42469a02b8a5052dad08965b7b4c57bee8f9c2c47d6b7f8cb88e20a8e1a171968cec7661a92f565da4ba5f9", "a1a912725269f74db763b42155164b675ed5383755da14991978ae4eb917d430fd2b3eebf98eaa349f43d690ab5f40af5490bd1f627debe188fc3c55fc6d72d9", "e11b948c9196d137fbc40d93f0012decd170498d8d8ffb03a364d3aeb2fb748ca72a17fc491c040a3473b03f2d94a594194b99a4c51b385a9ba83a94fc84b6d5", "c742a7627299de0eb041f7ff2368e59b805c0637a970f92a927f16ffb64dbe57019fb981e05315d072141c4a3b989866d42d69d646fca49a9384659a3f95ed45", "fc512d10616dddd1656cba5a9779bd66d9313d4e3ffb9a10e7ea17401c12ed30779af1ef7aef3347271955d02fbaf5f7ff7aae08c61f827bc86a730fa0e5f96a", "ae1cdcae08c70dbe94784f431f34da00673634987e0af97322008a42f63b30409ec2e02f5e8735c5625348b7e265c1488f851902c541c0da3983f20e65849778", "e14ee94d6021792663a7bbfc9d77c9ce4256292cba4fe9f386b164eaecf83f590022744db428b9216d443ca6a68f4ef60bfc7b9d80e98acf351aee2e516f20ff", "a755658c268e1fe10bcacfe8b5b95e20d1bec29a55617d7bf9b905e393e79ae281ed0e6de2b86abeeb5e1c9bc92f26b0286b1badb67a8a510375a18e26e4da24"}

for i, v in next, hwid_list do
    if decoded.headers[v] then
        hwid = decoded.headers[v];
        break
    end
end

if table.find(whitelistedd, hwid) then
    print("awesome")
    else print("nope") return
end

local VirtualUser = game:GetService'VirtualUser'
game:GetService'Players'.LocalPlayer.Idled:Connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

local am = 1
local good_fruits = {"Mera", "Magu", "Hie", "Pika", "Bari"}
local time1 = os.date("%H".."%M".."%S")
local style = _G.Style
local mmmm = "Melee"
local stat = game.Players.LocalPlayer.Name
local pos = Vector3.new(4676.46338, 0.956664801, -12765.9082)
local posc = CFrame.new(4676.46338, 0.956664801, -12765.9082)
if style == "Kiribachi" or style == "Katana" then
    mmmm = "Sword"
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("Meph GUI") -- Creates the window
local b = w:CreateFolder("GPO Exploits") -- Creates the folder(U will put here your buttons,etc)
local speed2 = 0
b:Label("Main",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
})

b:Toggle("Ship Farm", function(bool)
    shared.toggle = bool
    if shared.toggle then
        ship = true
    elseif not shared.toggle then
        ship = false
    end
end)

b:Toggle("Auto Boat Respawn", function(bool1)
    shared.toggle1 = bool1
    if shared.toggle1 then
        respawn = true
    elseif not shared.toggle1 then
        respawn = false
    end
end)

b:Toggle("Auto Equip",function(bool2)
    shared.toggle2 = bool2
    if shared.toggle2 then
        equip = true
    elseif not shared.toggle2 then
        equip = false
    end
end)

b:Toggle("Notify DF", function(bool3)
    shared.toggle3 = bool3
    if shared.toggle3 then
        dfnot = true
    elseif not shared.toggle3 then
        dfnot = false
    end
end)

b:Toggle("Store DF", function(bool4)
    shared.toggle4 = bool4
    if shared.toggle4 then
        dfstore = true
    elseif not shared.toggle4 then
        dfstore = false
    end
end)

b:Toggle("Failsafe",function(bool6)
    shared.toggle6 = bool6
    if shared.toggle6 then
        colo = true
    elseif not shared.toggle6 then
        colo = false
    end
end)

b:Label("Extra",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
})

b:Button("Go 2 Farming Spot",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - pos).magnitude/100, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = posc})
    tween:Play()
    local NotificationBindable = Instance.new("BindableFunction")
    NotificationBindable.OnInvoke = callback
 
    game.StarterGui:SetCore("SendNotification", {
        Title = "Wait Till Its There";
        Text = "use with freeze ocean";
        Duration = 3;
        Callback = NotificationBindable;
    })
end)

b:Button("No Fall Dmg",function()
if game.Players.LocalPlayer.Character:FindFirstChild"FallDamage" then
game.Players.LocalPlayer.Character.FallDamage.Name = "notfalldmg"
game.Players.LocalPlayer.Character.notfalldmg:Destroy()
end
end)

b:Toggle("Freeze Ocean", function(bool7)
    shared.toggle7 = bool7
    if shared.toggle7 then
        game:GetService("Workspace").Effects.Water.CanCollide = true
    elseif not shared.toggle7 then
        game:GetService("Workspace").Effects.Water.CanCollide = false
    end
end)

b:Toggle("Anti Drown",function(bool8)
    shared.toggle8 = bool8
    if shared.toggle8 then
        water = true
    elseif not shared.toggle8 then
        water = false
    end
end)

b:Toggle("Auto Haki Farm", function(bool9)
    shared.toggle9 = bool9
    if shared.toggle9 then
        haki = true
    elseif not shared.toggle9 then
        haki = false
    end
end)

b:Slider("Walkspeed",{
    min = 16; -- min value of the slider
    max = 120; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value2)
    speed2 = value2
end)

b:Toggle("Walkspeed", function(bool10)
    shared.toggle10 = bool10
    if shared.toggle10 then
        speed = true
    elseif not shared.toggle10 then
        speed = false
    end
end)

b:DestroyGui()

--TOGGLES

--SHIP FARM
spawn(function()
    while wait() do
        pcall(function()
        if ship then
            local function GetClosest()
            local Character = game.Players.LocalPlayer.Character
            local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
            if not (Character or HumanoidRootPart) then return end

            local TargetDistance = math.huge
            local Target

            for i,v in ipairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if v.Name:match("Captain") and v:FindFirstChild"HumanoidRootPart" and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude <= 1200 then
                    local TargetHRP = v.HumanoidRootPart
                    local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                    if mag < TargetDistance then
                        TargetDistance = mag
                        Target = v
                    end
                end
            end
                return Target
            end
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetClosest().HumanoidRootPart.Position).magnitude/120, Enum.EasingStyle.Linear)
                tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = GetClosest().HumanoidRootPart.CFrame * CFrame.new(0, 0, .5)})
            tween:Play()
            local Target = game:GetService("ReplicatedStorage").Events.CombatRegister;
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetClosest().HumanoidRootPart.Position).magnitude <= 8 then
            wait(.325)
            for kk = 1, 5 do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosest().HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
            local table_1 = {
	            [1] = 'damage',
	            [2] = GetClosest().HumanoidRootPart,
	            [3] = mmmm,
	            [4] = {
		            [1] = am,
		            [2] = 'Ground',
		            [3] = mmmm
	            }
            };
            Target:InvokeServer(table_1);
            am = am+1
            end
            am = 1
                end
            end
        end)
    end
end)

--BOAT RESPAWN
spawn(function()
    while wait() do
        if respawn then
            if not game:GetService("Workspace").Ships:FindFirstChild(game.Players.LocalPlayer.Name.."Ship") then
            game.ReplicatedStorage.Events.ShipEvents.Spawn:InvokeServer()
            end
        end
    end
end)

spawn(function()
    while wait() do
        if respawn then
        pcall(function()
        for i,shipa in pairs(game.Workspace.Ships:GetChildren()) do
            if shipa.Name == game.Players.LocalPlayer.Name.."Ship" then
                shipa.HumanoidRootPart.Anchored = true
                for i, b in pairs(shipa:GetChildren()) do
                    if b.Name:match("Seat") and not b.Disabled then
                        b.Disabled = true
                    end
                end
                end
            end
        end)
        end
    end
end)

spawn(function()
    while wait() do
        if respawn then
            pcall(function()
                while wait() do
                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                    wait()
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
                end
            end
            end)
        end
    end
end)

--AUTO EQUIP
spawn(function()
    while wait() do
        if equip then
            pcall(function()
                if sword then style = game.Players.LocalPlayer.Backpack:FindFirstChild"Kiribachi" or game.Players.LocalPlayer.Backpack:FindFirstChild"Katana"
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if equip then
            pcall(function()
                if not game.Players.LocalPlayer.Character:FindFirstChild(style) then
                    wait(2)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(style))
                end
            end)
        end
    end
end)

--NOTIFY DF 
game.Players.LocalPlayer:FindFirstChild"Backpack".ChildAdded:Connect(function(p1)
    pcall(function()
    wait()
        for i,fr in pairs(good_fruits) do
            if p1.Name == fr then
                    if dfnot then
                local time2 = os.date("%H".."%M".."%S")
                local time3 = time2 - time1
                local msg = "**-Logia Farm-** \nUser: " .. game.Players.LocalPlayer.Name .. " \nFound: " .. p1.Name .. "\nMinutes Elapsed: " .. time3/60 .. " \n<@".._G.DiscordID..">"
                syn.request({Url = _G.Url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
            end
        end
    end
end)
end)

--DF STORE 
spawn(function()
    while wait() do
        if dfstore then
            for i, p1 in pairs(game.Players.LocalPlayer:FindFirstChild"Backpack":GetChildren()) do
        for i,fr in pairs(good_fruits) do
        if p1.Name == fr then
            if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory2.Frame.Frame.ToolFrame:FindFirstChild(p1.Name) then
        repeat
            pcall(function()
                repeat wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(p1)
                wait(.3)
                game.ReplicatedStorage.Events.FruitStorage:InvokeServer()
                until not game.Players.LocalPlayer.Backpack:FindFirstChild(p1.Name)
                    wait(.5)
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(style))
                end)
            until not game.Players.LocalPlayer.Backpack:FindFirstChild(p1.Name)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(style))
            end
        end
        end
    end
end
end
end)

--FAILSAFE
spawn(function()
    while wait() do
        if colo and ship and respawn then
            if (game.Players.LocalPlayer.Character:FindFirstChild"HumanoidRootPart".Position - pos).magnitude >= 1650 then
                ship = false
                respawn = false
            repeat
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - pos).magnitude/95, Enum.EasingStyle.Linear)
            tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = posc})
            tween:Play()
            wait()
            until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - pos).magnitude <= 15
            wait()
            ship = true
            respawn = true  
            end
        end
    end
end)

game:GetService("Workspace").PlayerCharacters.ChildRemoved:Connect(function(s)
    wait()
    if s.Name == game.Players.LocalPlayer.Name and colo and ship and respawn then
        ship = false
        respawn = false
        game.Players.LocalPlayer.Character:WaitForChild"HumanoidRootPart"
    wait(3)
    repeat
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - pos).magnitude/95, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = posc})
    tween:Play()
    wait()
    until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - pos).magnitude <= 15
    wait()
    ship = true
    respawn = true
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(style))
    wait(.5)
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(style))
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
    end
end)

--ANTI DROWN 
spawn(function()
    while wait() do
        if water then
            if game.Players.LocalPlayer.Character:WaitForChild"Head":FindFirstChild"BillboardGui" then
                game.Players.LocalPlayer.Character:FindFirstChild"HumanoidRootPart".CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild"HumanoidRootPart".Position) * CFrame.new(0, 10, 0)
            end  
        end
    end
end)

--AUTO HAKI
spawn(function()
    while wait() do
        if haki then
            pcall(function()
            if game.Players.LocalPlayer.PlayerGui.HUD.Buso.BBar.bar.AbsoluteSize == game.Players.LocalPlayer.PlayerGui.HUD.Buso.BBar.AbsoluteSize then
            local buso = tostring(game.ReplicatedStorage["Stats"..stat].Stats.BusoMastery.Value)
            game:GetService("ReplicatedStorage").Events.Haki:FireServer("Buso")
            local NotificationBindable = Instance.new("BindableFunction")
            NotificationBindable.OnInvoke = callback
            game.StarterGui:SetCore("SendNotification", {
                Title = "Buso Mastery";
                Text = buso .. " / 70000 (max)";
                Duration = 3;
                Callback = NotificationBindable;
            })
        wait(1)
            end
        end)
        end
    end
end)

--WALKSPEED
spawn(function()
    while wait() do
        if speed then
            game.Players.LocalPlayer.Character:FindFirstChild"Humanoid".WalkSpeed = speed2
        end
    end
end)