for $profes in collection("/")/curso/precio[@cuota="anual"]
let $p := $profes/../profesor
where $profes > 300
order by $p
return $p
(: ==================================================================================================================================================== :)
(: Profesores que imparten cursos con cuotas anuales y  cuyo  precio es superior a 300 euros. Mostrar profesor, curso, y precio, ordenado por profesor. :)