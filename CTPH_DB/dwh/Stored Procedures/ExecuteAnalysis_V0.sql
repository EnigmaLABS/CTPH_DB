/*
exec dwh.ExecuteAnalysis_V0
*/
CREATE procedure dwh.ExecuteAnalysis_V0
as
begin
	select YEAR(fhMuestra) as Anho, MONTH(fhMuestra) as Mes, DAY(fhMuestra) as Dia, count(idMuestra) as numMuestras
	from [dbo].[Muestras]
	group by 
	YEAR(fhMuestra), MONTH(fhMuestra), DAY(fhMuestra)

end