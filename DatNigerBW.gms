SETS

        i / N,G,D,T,M,A,Z /
        m / C, E, TM, R /
        k / Tipo1, Tipo2/
        h /1,2,3/
        alias (j,i);

PARAMETERS
        cota(k)
        /
                Tipo1            138
                Tipo2            115
*                Tipo3            40
        /

        av(i)
        /
                N               800
                G               500
                D               0
                T               0
                M               0
                A               0
                Z               0 
        /

        d(i)
        /
                N               0
                G               0
                D               0
                T               0
                M               0
                A               750
                Z               300 
        /

        cap(k)
        /
                Tipo1            1.5
*               Tipo2            2
                Tipo2            3
        /
        
        velv(k)
        /
                Tipo1    90
*                Tipo2    95
                Tipo2    85
        /

        alpha(m)
        /
                C      1
                E      1
                TM     1
                R      1
        /
        t(m)
        /
                C      70000
                E      0.4
                TM     100
                R      0.997
        /

        qglobal
        budget
        logprob(i,j)
        logrel(i,j)
        dist(i,j)

        meta1
        meta2
        meta3
;

TABLE cf(i,j,k)

                     N.Tipo1          G.Tipo1         D.Tipo1          T.Tipo1          M.Tipo1          A.Tipo1            Z.Tipo1
        N               0               10               10               10               10               10                10
        G               10              0                10               10               10               10                10
        D               10              10               0                10               10               10                10
        T               10              10               10               0                10               10                10
        M               10              10               10               10               0                10                10
        A               10              10               10               10               10               0                 10
        Z               10              10               10               10               10               10                0

        +            N.Tipo2          G.Tipo2         D.Tipo2           T.Tipo2         M.Tipo2           A.Tipo2            Z.Tipo2
        N               0                15               15               15               15               15                15
        G               15               0                15               15               15               15                15
        D               15               15               0                15               15               15                15
        T               15               15               15               0                15               15                15
        M               15               15               15               15               0                15                15
        A               15               15               15               15               15               0                 15
        Z               15               15               15               15               15               15                0

*        +             N.Tipo3          G.Tipo3         D.Tipo3          T.Tipo3          M.Tipo3          A.Tipo3            Z.Tipo3
*        N               0                20               20               20               20               20                20
*        G               20               0                20               20               20               20                20
*        D               20               20               0                20               20               20                20
*        T               20               20               20               0                20               20                20
*        M               20               20               20               20               0                20                20
*        A               20               20               20               20               20               0                 20
*        Z               20               20               20               20               20               20                0
;

TABLE cv(i,j)

                        N                  G                 D                 T                 M                 A                  Z
        N               0                 2.5               2.5               2.5               2.5               2.5                2.5
        G               2.5               0                 2.5               2.5               2.5               2.5                2.5
        D               2.5               2.5               0                 2.5               2.5               2.5                2.5
        T               2.5               2.5               2.5               0                 2.5               2.5                2.5
        M               2.5               2.5               2.5               2.5               0                 2.5                2.5
        A               2.5               2.5               2.5               2.5               2.5               0                  2.5
        Z               2.5               2.5               2.5               2.5               2.5               2.5                0

;

TABLE velc(i,j)

                        N               G               D               T               M               A               Z
        N               0               80              50              30              80              20              40
        G               80              0               80              50              10              20              20
        D               50              80              0               10              10              10              20
        T               30              50              10              0               50              90              50
        M               80              10              10              50              0               10              50
        A               20              20              10              90              10              0               50
        Z               40              20              20              50              50              50              0
;

$ontext
TABLE prob(i,j)

                        N        G        D        T        M        A        Z
        N               1        0.9783   0.9782   0.978    1        1        1
        G               0.9783   1        0.9786   1        0.9789   1        1
        D               0.9782   0.9786   1        0.9791   0.9788   1        1
        T               0.978    1        0.9791   1        0.9785   0.9791   1
        M               1        0.9789   0.9788   0.9789   1        1        0.9787
        A               1        1        1        0.9791   1        1        0.9792
        Z               1        1        1        1        0.9787   0.9792   1

;


*TABLE rel(i,j)
*
                        N             G             D             T             M             A             Z
        N               0.000001      0.9983        0.9982        0.998         0.000001      0.000001      0.000001
        G               0.9983        0.000001      0.9986        0.000001      0.9989        0.000001      0.000001
        D               0.9982        0.9986        0.000001      0.9991        0.9955        0.000001      0.000001
        T               0.998         0.000001      0.9991        0.000001      0.9985        0.9991        0.000001
        M               0.000001      0.9989        0.9955        0.9989        0.000001      0.000001      0.9987
        A               0.000001      0.000001      0.000001      0.9991        0.000001      0.000001      0.9992
        Z               0.000001      0.000001      0.000001      0.000001      0.9987        0.9992        0.000001
;
$offtext
TABLE vav(k,i)

                        N               G               D               T               M               A               Z
        Tipo1           60              55              10              8               5               0               0
*        Tipo2           30              45              15              28              5               0               0
        Tipo2           20              40              20              30              5               0               0
;
TABLE dist(i,j) distancia de i a j
                       N        G        D        T        M        A        Z
        N              0       200      100      450       0        0        0
        G             200       0       100       0       600       0        0
        D             100      100       0       350      400       0        0
        T             450       0       350       0       250      400       0
        M              0       600      400      250       0        0       250
        A              0        0        0       400       0        0       550
        Z              0        0        0        0       250      550       0;

$ontext
TABLE dist(i,j) distancia de i a j
                       N        G        D        T        M        A        Z
        N              0       200      100      450       0        0        0
        G              0        0       100       0       600       0        0
        D              0        0        0       350      400       0        0
        T              0        0        0        0       250      400       0
        M              0        0        0        0        0        0       250
        A              0        0        0        0        0        0       550
        Z              0        0        0        0        0        0        0
;
$offtext

budget = 80000 ;
qglobal = 500 ;
cf(i,j,k)=cf(i,j,k)/100;
cv(i,j)=cv(i,j)/100;
*logprob(i,j) = log(prob(i,j));
*logrel(i,j) = log(rel(i,j));
meta1 = 80000;
meta2 = 127.25;
meta3 = 0;

VARIABLES
X(i,j,k) numero de vehiculos k de ciudad i a j
carga(i,j,k) carga de ciudad i a j con vehiculo tipo k
Y(i,j,k) uno si vehiculo tipo k viaja de i a j
load(i) cantidad de carga que se queda en i
Time(i) tiempo en llegar a la ciudad i 

Coste Coste total
Equidad 
Tiempo
Metas

p(h) cantidad sobre el criterio
n(h) cantidad bajo el criterio
;

positive variable X
positive variable carga
positive variable load
positive variable Time
binary variable Y
positive variable p
positive variable n

*----------------------------*
*----------------------------*
EQUATIONS
*----------------------------*
*----------------------------*

FOBJETIVO1 restriccion de la funcion objectivo cost
FOBJETIVO2 equidad 
FOBJETIVO3 tiempo
FOBJETIVO4 metas

flujoAyuda lo que sale tiene que ser igual a lo que llega
flujoCoche lo que sale tiene que ser igual o menor a lo que llega
flow lo que queda tiene que ser menor que la demanda mas la oferta
demandatot lo que llega de A y Z es igual a quinientos
cargacapa la carga tiene que ser menor que lo que podemos transportar
maxbudget budget maximo
resTiempo
res8

resmeta1
resmeta2
resmeta3
;

FOBJETIVO1.. Coste =E= SUM((i,j,k)$(dist(i,j)>0), dist(i,j)*(2*X(i,j,k)*cf(i,j,k)+cv(i,j)*carga(i,j,k)));
FOBJETIVO2(i)$(d(i)>0).. Equidad =L= load(i)/d(i);
FOBJETIVO3(i)$(d(i)>0).. Tiempo =G= Time(i);
FOBJETIVO4.. Metas =E= p('1') + p('2');

flujoAyuda(j).. SUM((i,k)$(dist(i,j) > 0), carga(i,j,k)) + av(j) =E= SUM((i,k)$(dist(j,i) > 0), carga(j,i,k)) + load(j);
flujoCoche(j,k).. SUM(i$(dist(i,j) > 0), X(i,j,k)) + vav(k,j) =G= SUM(i$(dist(j,i) > 0), X(j,i,k));
flow(j).. load(j) =L= d(j)+av(j);
demandatot.. load('A')+load('Z') =E= qglobal;
cargacapa(i,j,k)$(dist(i,j) > 0).. carga(i,j,k) =L= cap(k)*X(i,j,k);
maxbudget.. Coste =L= budget;
resTiempo(i,j,k)$(dist(i,j)>0).. Time(j) =G= Time(i) + (dist(i,j)/(min(velv(k), velc(i,j)))) - 10000*(1-Y(i,j,k));
res8(i,j,k)$(dist(i,j)>0).. X(i,j,k) =L= cota(k)*Y(i,j,k);

resmeta1.. Coste + n('1') - p('1') =E= meta1;
resmeta2.. Tiempo + n('2') - p('2') =E= meta2;
resmeta3.. Equidad + n('3') - p('3') =E= meta3;

options optcr=0;

*Coste
model thecost /FOBJETIVO1,FOBJETIVO2,FOBJETIVO3,flujoAyuda,flujoCoche,flow,demandatot,cargacapa,maxbudget,resTiempo,res8/;
solve thecost minimize Coste using MIP;

*Equidad
model theequality /FOBJETIVO1,FOBJETIVO2,FOBJETIVO3,flujoAyuda,flujoCoche,flow,demandatot,cargacapa,maxbudget,resTiempo,res8/;
solve theequality maximize Equidad using MIP;

*Tiempo
model thetime /FOBJETIVO1,FOBJETIVO2,FOBJETIVO3,flujoAyuda,flujoCoche,flow,demandatot,cargacapa,maxbudget,resTiempo,res8/;
solve thetime minimize Tiempo using MIP;

*Metas
model themeta /all/;
solve themeta minimize Metas using MIP;