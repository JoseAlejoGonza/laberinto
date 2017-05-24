conecta(2,2,3,2).
conecta(3,2,4,2).
conecta(6,2,7,2).
conecta(7,2,8,2).
conecta(2,2,3,2).
conecta(4,2,4,3).
conecta(6,2,6,3).
conecta(7,2,7,3).
conecta(8,2,8,3).
conecta(2,3,2,4).
conecta(4,3,4,4).
conecta(6,3,6,4).
conecta(7,3,7,4).
conecta(8,3,8,4).
conecta(2,4,3,4).
conecta(3,4,4,4).
conecta(6,4,7,4).
conecta(7,4,8,4).
conecta(2,4,2,5).
conecta(3,4,3,5).
conecta(4,4,4,5).
conecta(6,4,6,5).
conecta(7,4,7,5).
conecta(8,4,8,5).
conectado(Pos1x,Pos1y,Pos2x,Pos2y) :- conecta(Pos1x,Pos1y,Pos2x,Pos2y).
conectado(Pos1x,Pos1y,Pos2x,Pos2y) :- conecta(Pos2x,Pos2y,Pos1x,Pos1y).
miembro(X,[X|_]).
miembro(X,[_|Y]) :- miembro(X,Y) .
rutas :- camino([8],rutas),write(rutas) .
camino([47|RestoDelCamino],[47|RestoDelCamino]).
camino([PosActual|RestoDelCamino],rutas) :- conectado(PosActualx,PosActualy,PosSiguientex,PosSiguientey),\+
miembro(PosSiguientex,PosSiguientey,RestoDelCamino),
camino([PosSiguientex,PosSiguientey,PosActual|RestoDelCamino],rutas).
