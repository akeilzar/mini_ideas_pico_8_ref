function _init()
u = 0
s = 0.5
end

function _draw()
	cls()
	xmv = (sin(u)*31*s)
	ymv = (cos(u)*31*s)
	circfill(63-xmv,63-ymv,2,7)
	circ(63,63,31*s,7)
end

function _update()
	if btn(➡️) then
		u += 0.01
	end
	if btn(⬅️) then
		u -= 0.01
	end
	if btn(⬆️) then
		s += 0.01
	end
	if btn(⬇️) then
		s -= 0.01
	end
end
