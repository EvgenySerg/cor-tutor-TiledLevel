-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here



lines = {}

local tab=0
  for line in io.lines("level1.txt") do 
    lines[#lines + 1] = line
  end

 math.randomseed(os.time())

for k,v in pairs(lines) do
	tab=0
  for i=1,string.len(v),1 do	
 		
		if string.sub(v,i,i)=='\t' then
  			tab=tab+1
  		end
  		if string.sub(v,i,i)=="f" then
  			display.newImage("forestTile"..(math.random(3)-1)..".png", (i-1-tab)*25,(k-1)*25)
  		end
  		if string.sub(v,i,i)=="w" then
  			display.newImage("waterTile.png", (i-1-tab)*25,(k-1)*25)
  		end
  		if string.sub(v,i,i)=="r" then
  			display.newImage("roadTile.png", (i-1-tab)*25,(k-1)*25)
  		end
  	end
  
end
