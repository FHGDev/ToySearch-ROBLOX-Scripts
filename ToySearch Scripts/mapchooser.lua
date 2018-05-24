light = game.Lighting;
currentmap = nil;
maps = light.Maps:GetChildren();
m = Instance.new("Message", game.Workspace);
time = 300

function choosemap(lighting, placein)
    while wait(1) do 
        time = time - 1
        repeat wait(1) until time = 0
        if time == 0 then 
            time = 300
        end    
    end

    local map = math.random(#maps);
    m.Text = "Choosing Map..."
    wait(3)
    m.Text = "Map chosen! Chosen map: "..map.Name
    wait(3)
    m.Text = "Building Map..."
    wait(3)
    map.Parent = placein
    currentmap = map
    m.Text = ""
end

function endmap(lighting)   
    if currentmap ~= nil then
        local map = currentmap

    else
        error("Currentmap is nil.")
    end
end

choosemap(light, workspace)