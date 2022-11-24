local curPoint = Unit.getByName("bob"):getPoint()
   --local lat, lon, alt = coord.LOtoLL(curPoint)
   --trigger.action.outText('Bob is at the raw coordinates of \nLatitude: ' .. lat .. ' \nLongitude: ' .. lon .. '\nAltitude: ' .. alt, 20)

   local grid = coord.LLtoMGRS(coord.LOtoLL(Unit.getByName('bob'):getPoint()))
   local s = grid.UTMZone .. ' ' .. grid.MGRSDigraph .. ' ' .. grid.Easting .. ' ' .. grid.Northing
   trigger.action.outText(s, 20)