-- Edge50Hub - Blox Fruits Script UI
-- Interface inspirada na open source do Nicuse, com personalização feita por Carlos e ChatGPT

-- Carrega o script base do Nicuse
loadstring(game:HttpGet("https://nicuse.xyz/MainHub.lua"))()

-- Aguarda a interface carregar
task.wait(5)

-- Cria a aba BrazilDiscord
local function CreateDiscordTab()
    local ScreenGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("Main")
    if not ScreenGui then return end

    local DiscordButton = Instance.new("TextButton")
    DiscordButton.Name = "BrazilDiscord"
    DiscordButton.Text = "🌎 Entrar no Discord do Edge50Hub"
    DiscordButton.Size = UDim2.new(0, 300, 0, 50)
    DiscordButton.Position = UDim2.new(0, 10, 0, 350)
    DiscordButton.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    DiscordButton.Font = Enum.Font.Gotham
    DiscordButton.TextScaled = true
    DiscordButton.Parent = ScreenGui

    local UICorner = Instance.new("UICorner", DiscordButton)
    UICorner.CornerRadius = UDim.new(0, 10)

    DiscordButton.MouseButton1Click:Connect(function()
        -- Abre o Discord diretamente (apenas em executores com suporte)
        local success, err = pcall(function()
            game:HttpGet("discord://discord.gg/ctFXVQ5CPq")
        end)
        if not success then
            setclipboard("https://discord.gg/ctFXVQ5CPq")
            DiscordButton.Text = "🔗 Link copiado!"
        end
    end)
end

-- Cria a aba Créditos
local function CreateCreditsTab()
    local ScreenGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("Main")
    if not ScreenGui then return end

    local CreditFrame = Instance.new("Frame")
    CreditFrame.Name = "Credits"
    CreditFrame.Size = UDim2.new(0, 250, 0, 100)
    CreditFrame.Position = UDim2.new(0, 10, 0, 410)
    CreditFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    CreditFrame.BorderSizePixel = 0
    CreditFrame.Parent = ScreenGui

    local UICorner = Instance.new("UICorner", CreditFrame)
    UICorner.CornerRadius = UDim.new(0, 10)

    local TextLabel = Instance.new("TextLabel")
    TextLabel.Size = UDim2.new(1, -10, 1, -10)
    TextLabel.Position = UDim2.new(0, 5, 0, 5)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Text = "💡 Obrigado por usar o Edge50Hub!\nMande suas ideias de scripts pra gente criar juntos!"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.Font = Enum.Font.Gotham
    TextLabel.TextWrapped = true
    TextLabel.TextScaled = true
    TextLabel.Parent = CreditFrame
end

-- Inicializa as abas personalizadas
CreateDiscordTab()
CreateCreditsTab()
