if CLIENT then
surface.CreateFont('clock', {
	font = 'Open Sans Bold',
	size = 30,
	weight = 600
	} )
	surface.CreateFont('clockst', {
		font = 'bohemian typewriter',
		size = 25,
		weight = 600
		} )

end
function minclock()
	slash = Material("materials/slashers_clock.png")

	if minclock == 1 and engine.ActiveGamemode() ~= "slashers" then
		draw.RoundedBox(0,1730,10,180,40,Color(255,140,0))
		draw.RoundedBox(0,1733,12,175,35,Color(0,0,0))
		draw.SimpleText(os.date("%X",os.time()),"clock", 1773, 12, Color(255,255,255))
	end
	clock_yes = 1
	if minclock ~= 1 and engine.ActiveGamemode() ~= "slashers" then
		draw.RoundedBox(5,1730,10,180,40,Color(70,130,180))
		draw.RoundedBox(5,1733,12,175,35,Color(0,0,0))
		draw.SimpleText(os.date("%X",os.time()),"clock", 1773, 12, Color(255,255,255))
	end
	if engine.ActiveGamemode() == "slashers" then
		surface.SetDrawColor(255,140,0,255)
		surface.SetMaterial(slash)
		surface.DrawTexturedRect( 1735, -55, 180, 170 )

		draw.SimpleText(os.date("%X",os.time()),"clockst", 1773, 12, Color(255,255,255))
	end
end

hook.Add("HUDPaint", "minclock", minclock)