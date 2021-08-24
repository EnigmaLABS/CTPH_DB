select * 
from 
Muestras m
inner join Muestras_Valores mv on m.idMuestra = mv.idMuestra 
inner join PuntosDeMedida pm on mv.idPuntoDeMedida = pm.idPuntoDeMedida
inner join Tipos_PuntosDeMedida tpm on pm.idTipoPuntoDeMedida = tpm.idTipoPuntoDeMedida


select * 
from 
Muestras m
inner join SituacionAmbiente sa on m.idSituacionAmbiente = sa.idSituacionAmbiente
inner join SituacionAmbiente_Elementos sa_elem on sa.idSituacionAmbiente = sa_elem.idSituacionAmbiente
inner join Elementos elem on sa_elem.idElemento = elem.idElemento
left join [dbo].[Elementos_Listas_Valores] lst on sa_elem.idListaValor = lst.idListaValores

/* CLEAN
delete from Muestras_Valores
delete from Muestras
delete from SituacionAmbiente_Elementos
delete from [dbo].[SituacionAmbiente]
*/

--select * from Elementos
--select * from [Elementos_Listas_Valores]
