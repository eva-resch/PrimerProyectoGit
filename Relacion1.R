source("~/Code/TeoriaDeLaDecision/TDecisionCodigo/teoriadecision_funciones_incertidumbre.R")

# 1.1a

tabla1a = crea.tablaX(c(5,4,6,2,3,1,-1,8,7,5,2,0), numalternativas = 4, numestados = 3)
tabla1a

criterio.Wald(tablaX = tabla1a, TRUE)
criterio.Optimista(tablaX = tabla1a, TRUE)
criterio.Hurwicz(tablaX = tabla1a, alfa = 0.4, TRUE)
criterio.Hurwicz.General(tablaX = tabla1a)
dibuja.criterio.Hurwicz(tabla1a)
dibuja.criterio.Hurwicz_Intervalos(tabla1a, TRUE, TRUE)
criterio.Savage(tabla1a)
criterio.Laplace(tabla1a)
criterio.PuntoIdeal(tabla1a)

criterio.Todos(tabla1a, alfa = 0.4, favorable = TRUE)


# 1.1b

tabla1b = crea.tablaX(c(2,12,-3,5,5,-1,0,10,-2), numalternativas = 3, numestados = 3)
tabla1b

criterio.Todos(tablaX = tabla1b, alfa = 0.4, favorable = FALSE)
dibuja.criterio.Hurwicz(tablaX = tabla1b, favorable = FALSE)


# 1.2

tabla2 = crea.tablaX(c(0,1,0,1,0,0,0.5,0.5,0), numalternativas = 3, numestados = 3)
tabla2
dibuja.criterio.Hurwicz(tabla2, favorable = TRUE)


# 1.7

# gleiche Entscheidung, wenn nicht nur Gewinn, sondern gesamter Umsatz angeschaut wird (i.e. m11 = 900*1.05)

# e1 : tiempo bueno

m11 = 900*0.05
m21 = 900*0.6
m31 = 900

# e2 : tiempo malo

m12 = 900 * 0.05
m22 = - 900 * 0.2
m32 = - 900

tabla7 = crea.tablaX(c(m11,m12,m21,m22,m31,m32), 3, 2)
res7 = criterio.Todos(tabla7, 0.5, favorable = TRUE)
res7

# María : Wald, entonces d1
# Amigo : Savage, entonces d2


# 1.8

# un decisor
# modelo de ganancias (favorable)

#alternativas : d1 contracto con editorial, d2 publica él mismo
#estados de naturaleza: e1 tiene éxito, e2 no tiene éxito

# matriz de decision o valoraciones (ganancia expresada en 1000 euros):
# e1
m11 = (20000 + 200000*1)/1000
m21 = (200000*1 - 90000)/1000
# e2
m12 = (20000 + 10000*1)/1000
m22 = (10000*1 - 90000)/1000

tabla8 = crea.tablaX(c(m11,m12,m21,m22), 2, 2)
res8 = criterio.Todos(tabla8, 0.5, favorable = TRUE)
res8

# siempre mejor d1


# Problema aleatorio

set.seed(10)
tabla9 = crea.tablaX(rnorm(30*20, mean=1000, sd=10), 30, 20)
res9 = criterio.Todos(tabla9, 0.5, favorable = FALSE)
res9[31,-(1:20)]


