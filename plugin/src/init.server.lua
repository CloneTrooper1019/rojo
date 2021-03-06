if not plugin then
	return
end

local Roact = require(script.Parent.Roact)

local App = require(script.Components.App)

local app = Roact.createElement(App, {
	plugin = plugin,
})

local tree = Roact.mount(app, game:GetService("CoreGui"), "Rojo UI")

plugin.Unloading:Connect(function()
	Roact.unmount(tree)
end)