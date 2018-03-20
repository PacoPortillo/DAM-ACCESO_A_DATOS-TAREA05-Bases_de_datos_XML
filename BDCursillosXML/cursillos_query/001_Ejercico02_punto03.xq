for $curso in collection("/")/curso
return <curso>{$curso/nombre, <fecha>{$curso/comienzo, $curso/fin}</fecha>}</curso>
(: ============================================================================================================ :)
(: Fechas de inicio y finalización de cada curso impartido, indicando nombre del curso y fechas de impartición. :)