--[[Monty Hall Problem]]

math.randomseed(os.time())

function BuildGameSet( n )                      --[[n entries for 2 goats. Goats are false. Returns GoatTable]]
	local tReturnTable = { }
	for i=1,n do
		local tDoorsProto = {false, false, false}   --Gotta put a car behind one of these, and give the other goat a break.
		tDoorsProto[math.random(3)] = true          --Here's a car.
		tReturnTable[ i ] = tDoorsProto             --This game is going at the end of the table.
	end
	return tReturnTable
end

function SelectDoor(n, DoorNumber, stay)
	local tGameSet = BuildGameSet(n)              --Novel GameSet
	local WinRate = 0;
	for i,v in ipairs(tGameSet) do                --We are going to play the table's length of games!
		if v[DoorNumber]then                        --Might be unclear, but this is placing your choice in the game checking if true.
			if stay then                              --If you stay when you chose the right door, you win. Simple, right?
				WinRate = WinRate + 1
			end
		elseif not stay then                        --Else (you didn't choose right) and if you aren't staying then
		  WinRate = WinRate + 1                     --you win because the remaining door obviously has to have a car.
		end
	end
	return WinRate/n;
end

print(SelectDoor(1000, 1))
print(SelectDoor(1000, 1, true))
