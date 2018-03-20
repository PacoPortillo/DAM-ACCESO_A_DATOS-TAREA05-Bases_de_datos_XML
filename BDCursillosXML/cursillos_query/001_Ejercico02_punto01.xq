for $curso in collection("/")/curso[aula=2]
return <curso>{$curso/nombre, $curso/profesor, $curso/dias}</curso>
(:=============================================================:)
(: Ocupación diaria del aula 2, indicando el curso y profesor. :)