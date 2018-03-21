let $b := collection("/")
for $c in $b/curso/nombre/text()
let $n := $b/curso[nombre=$c]/profesor
let $dni := $b/profesor[nombre=$n]/dni
let $p := $b/aula[@id=$n/../aula]/puestos
return <curso>{$c} {$n} {$dni} {$n/../aula} {$p}</curso>
(: ============================================================================================================================ :)
(: Inventa una consulta sobre la BD.:)
(: Listado de cursos: mostrar el Título del curso, nombre del profesor, su DNI, número de aula y las puestos que tiene ese aula :)