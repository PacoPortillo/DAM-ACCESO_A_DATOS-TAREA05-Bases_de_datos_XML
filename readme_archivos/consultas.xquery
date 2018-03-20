for $aula in collection("/")/aula[@id=2]
return $aula/nombre



(: Estas dos son iguales :)
for $curso in collection("/")/curso
where $curso/aula = 2
return $curso/nombre

for $curso in collection("/")/curso[aula=2]
return $curso/nombre
(: Fin de Estas dos son iguales. :)


(: Ocupación diaria del aula 2, indicando el curso y profesor. :)
for $curso in collection("/")/curso[aula=2]
return <curso>{$curso/nombre, <profesor>{$curso/profesor}</profesor>}</curso> 

for $curso in collection("/")/curso[aula=2]
return <curso>{$curso/nombre, $curso/profesor}</curso> 

		for $curso in collection("/")/curso[aula=2]
		return <curso>{$curso/nombre, $curso/profesor, $curso/dias}</curso> 


(: Profesores que imparten cursos con cuotas anuales y  cuyo  precio es superior a 300 euros. Mostrar profesor, curso, y precio, ordenado por profesor. :)
for $profes in collection("/")/curso[precio[@cuota="anual"]]
return $profes/profesor

for $profes in collection("/")/curso/precio[@cuota="anual"]
return $profes/../profesor

for $profes in collection("/")/curso/precio[@cuota="anual"]
where $profes > 300
return $profes/../profesor
		
		for $profes in collection("/")/curso/precio[@cuota="anual"]
		let $p := $profes/../profesor
		where $profes > 300
		order by $p
		return $p


(: Fechas de inicio y finalización de cada curso impartido, indicando nombre del curso y fechas de impartición. :)
for $curso in collection("/")/curso
return <curso>{$curso/nombre, $curso/comienzo, $curso/fin}</curso> 

		for $curso in collection("/")/curso
		return <curso>{$curso/nombre, <fecha>{$curso/comienzo, $curso/fin}</fecha>}</curso> 



(: Inventa una consulta sobre la BD.:)
(: Listado de cursos: mostrar el Título del curso, nombre del profesor, su DNI, número de aula y las puestos que tiene ese aula :)
let $n := collection("/")/curso[nombre="Programación en PHP"]/profesor
return $n

let $n := collection("/")/curso[nombre="Programación en PHP"]/profesor
let $dni := collection("/")/profesor[nombre=$n]/dni/text()
return <curso>{$n, <dni>{$dni}</dni>}</curso>

let $n := collection("/")/curso[nombre="Programación en PHP"]/profesor
let $dni := collection("/")/profesor[nombre=$n]/dni/text()
return <curso>{$n, <dni>{$dni}</dni>} {$n/../aula}</curso>

let $n := collection("/")/curso[nombre="Programación en PHP"]/profesor
let $dni := collection("/")/profesor[nombre=$n]/dni/text()
let $p := collection("/")/aula[@id=$n/../aula]/puestos
return <curso>{$n, <dni>{$dni}</dni>} {$n/../aula} {$p}</curso>

let $n := collection("/")/curso[nombre="Programación en PHP"]/profesor
let $dni := collection("/")/profesor[nombre=$n]/dni
let $p := collection("/")/aula[@id=$n/../aula]/puestos
return <curso>{$n} {$dni} {$n/../aula} {$p}</curso>

for $c in collection("/")/curso/nombre/text()
let $n := collection("/")/curso[nombre=$c]/profesor
let $dni := collection("/")/profesor[nombre=$n]/dni
let $p := collection("/")/aula[@id=$n/../aula]/puestos
return <curso>{$c} {$n} {$dni} {$n/../aula} {$p}</curso>

		let $b := collection("/")
		for $c in $b/curso/nombre/text()
		let $n := $b/curso[nombre=$c]/profesor
		let $dni := $b/profesor[nombre=$n]/dni
		let $p := $b/aula[@id=$n/../aula]/puestos
		return <curso>{$c} {$n} {$dni} {$n/../aula} {$p}</curso>












