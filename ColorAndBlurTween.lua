local TweenConfig = {}

--// Tween Blur

function TweenConfig:CreateBlurTween(seconds, style, direction, endsize, untiltween)
	local blur = Instance.new("BlurEffect", game.Lighting)
	blur.Size = 0

	local info = TweenInfo.new(
		seconds,
		style,
		direction
	)

	local properties = {
		Size = endsize
	}

	local btween = game:GetService("TweenService"):Create(blur, info, properties)
	wait(untiltween)
	btween:Play()
end

--// Tween Color

function TweenConfig:CreateColorTween(untilend, item, endcolor3, seconds, style, direction)
	local info = TweenInfo.new(
		seconds,
		style,
		direction
	)

	local properties = {
		BackgroundColor3 = endcolor3 -- thanks to roblox for adding a built in color pallette to the script editor.
	}

	local cotween = game:GetService("TweenService"):Create(item, info, properties)
	wait(untilend)
	cotween:Play()
end

--[[
TweenConfig:CreateColorTween(5, script.Parent, Color3.fromRGB(255, 48, 51), 5, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
--]]

