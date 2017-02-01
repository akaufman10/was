# -*- coding: utf-8 -*-
"""
Created on Wed Dec 28 16:55:20 2016

@author: alex
"""
import base64

with open('in.gdx', 'rb') as myfile:
    gdx=myfile.read()
result = base64.b64encode(gdx).decode('ascii')


xml = '''
    <document>
<category>nco</category>
<solver>MINOS</solver>
<inputType>GAMS</inputType>
<client>Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36@46.116.59.17</client>
<priority>long</priority>
<email></email>
<model><![CDATA[$ontext

   1. compleq.inc, complcon.inc are not included (they are empty).
      Add to the model if needed.

   2. This is a DNLP so a little bit tricky to solve.

$offtext



$GDXIN in.gdx
$onempty

Set i1(i1) all districts with intermediate nodes ;
$LOADDC i1

Set i(i1) districts without intermediate nodes ;
$LOADDC i

Set ii(i) district numbers for Israel ;
$LOADDC ii

Set ip(i) district numbers for PNA ;
$LOADDC ip

Set ij(i) district numbers for Jordan ;
$LOADDC ij

Set in(i1) node numbers for intermediate nodes ;
$LOADDC in

Set ir(i) real districts not including i21 ;
$LOADDC ir

Set s(*) supply source ;
$LOADDC s

Set d(*) demand sector ;
$LOADDC d

Set st(*) fixed price policy steps ;
$LOADDC st

Set cp(*) shared resources ;
$LOADDC cp

Alias (j, i);

Alias (j1, i1);

Set iri(i) Israeli districts real ;
$LOADDC iri

Set iii(i1) Israeli districts including intermediate nodes ;
$LOADDC iii

Set iip(i1) node numbers for intermediate nodes ;
$LOADDC iip

Alias (ijj, ij);

Alias (iiij, iii);

Alias (iipj, iip);

Scalar MAXP Cutoff price ;
$LOADDC MAXP

Scalar MINP Cutoff price ;
$LOADDC MINP

Scalar SUPMULT Supply multiplier for drought and wet years ;
$LOADDC SUPMULT

Parameter POP(i1) Population in district i1 for specified scenario ;
$LOADDC POP

Parameter ALPHA(i,d) Exponent of inverse demand curve for each sector at district i ;
$LOADDC ALPHA

Parameter QDL(i,d) Water Demand by sector in node i in MCM for specified scenario ;
$LOADDC QDL

Parameter B(i1,d) Coefficient of inverse demand curve for each sector at district i in 1990 ;
$LOADDC B

Parameter P0(i1,d) 'Price at current demands at district i in 1990 in $ per m3' ;
$LOADDC P0

Parameter DEMMULT(i,d) Demand Multiplier for district i and demand sector d ;
$LOADDC DEMMULT

Parameter PR_UNPAID(i1,d) Percent of setaside water unpaid-for by sector / /;

Parameter QSMAX(i,s) Upper Bound on Water Supply from Source s in node i in MCM ;
$LOADDC QSMAX

Parameter CS(i,s) Unit cost for supplying water from source s in node i in dollars per m3 ;
$LOADDC CS

Parameter NONPOTS(i1,d) Supply of nonpotable water ;
$LOADDC NONPOTS

Parameter INDCP(cp,i,s) Indicates if supply source is in common pool or shared resource / /;

Parameter QSHARED(cp) Quantity available from a shared resource / /;

Parameter ARC(i1,j1) Connections - 1 if arc is possible between i and j and 0 otherwise ;
$LOADDC ARC

Parameter CTR(i1,j1) 'Unit transfer cost from node i to j - in $ per m3' ;
$LOADDC CTR

Parameter CINTRA(i1) 'Intra-district conveyance costs - in $ per m3' ;
$LOADDC CINTRA

Parameter DL(i1) District leakage rates as a fraction if flow in district i ;
$LOADDC DL

Parameter TL(i1,j1) Inter-district transfer leakage rates as a fraction ;
$LOADDC TL

Parameter TLR(i1,j1) Inter-district recycled transfer leakage rates as a fraction / /;

Parameter ARCR(i1,j1) Possible connections for recycled water in a parallel network ;
$LOADDC ARCR

Parameter CTRY(i1,j1) Unit cost to transfer recycled water from district i to j in dollars per m3 ;
$LOADDC CTRY

Parameter QTRUP(i1,j1) Capacity of pipeline in mcm - fresh ;
$LOADDC QTRUP

Parameter QTRYUP(i1,j1) Capacity of pipeline in mcm - recycled / /;

Parameter PRMAX(i1,d) Maximum percent recycling at i from use d / /;

Parameter RECYCAP(i1) Maximum capacity of recycling plant at i / /;

Parameter SUBQON(i) Indicator for whether user specified constraint on quantity recycled water use / /;

Parameter SUBPON(i) Indicator for whether user specified constraint on percent of recycled water use / /;

Parameter QRECMAX(i) Maximum quantity of recycled water that can be used in i1 / /;

Parameter PRECMAX(i) Maximum percentage of recycled water that can be used in i1 / /;

Parameter CUSEREC(i) 'Additional cost to use recycled water in $ per m3' / /;

Parameter CR(i1,d) Unit cost to recycle water at node i in dollars per cubic meter ;
$LOADDC CR

Parameter CE(i,d) 'Environmental cost for sector d in district i in $ per cubic meter' ;
$LOADDC CE

Parameter SUBAMT(i,d) Subsidy amount in dollars per m3 for agricultural water in i / /;

Parameter SUBRATE(i,d) Subsidy rate in percent for agricultural water in i / /;

Parameter QLO(i,d) Lower bound on quantity demanded / /;

Parameter QMAX(i,d) Upper bound on quantity demanded / /;

Parameter SETASIDE(i1) Amount of water set aside for environmental or other reasons / /;

Parameter QREQUIRED(i,d) Quantity required by demand sector for each district (MCM) / /;

Parameter MINQ(i,d) 'Quantity below which the demand sector experiences losses ($ per m3)' / /;

Parameter LOSSES(i,d) Losses associated when quantity falls below MINQ / /;

Parameter DESAL(i) Indicator for whether there is a desalination plant online / /;

Parameter DESAL_CAP(i) Capacity of desalination plants / /;

Parameter QQ(i,d) FPP total quantity for each demand sector / /;

Parameter QR(i,d) FPP recycled quantity for each demand sector / /;

Parameter QF(i,d) FPP Fresh water quantity for each demand sector / /;

Parameter HITINDF(i,d) Indicator for where FPP steps are hit ;
$LOADDC HITINDF

Parameter HITINDR(i,d) Indicator for where FPP steps are hit / /;

Parameter QINDIC(i,d) Indicator for whether quotas are on or off / /;

Parameter REIMBURS(i,d) Amount demand sectors reimburse gov't for costs / /;

Parameter PFPP(i,d) Price at which last water is bought / /;

$offempty


* This allows comments to be made in a line by using the characters: {}
$inlinecom{ }

* The following lines allow for a maximum of 8000 iterations by the solver,
* and increases the default resource limit.

OPTIONS ITERLIM=800000;
OPTIONS RESLIM=1000000;

* The following declares the decision variables for the optimization problem

VARIABLES
    Z           Net Economic Benefit in Million Dollars
    QS(i1,s)    Quantity supplied by source s in district i in MCM
    QD(i1,d)    Quantity demanded by sector d in district i in MCM
    QDPAID(i1,d) Quantity of water paid for by sector d in district I in MCM

    QTR(i1,j1)  Quantity of water transferred from district i to district j in MCM
    QRY(i1,d)   Quantity of water recycled from use d at district i in MCM
    QFRY(i1,d)  Quantity of recycled water supplied to use d at district i in MCM
    QTRY(i1,j1) Quantity of recycled water transferred from district i to district j in MCM
    PR(i1,d)    Percent recycled at district i from use d
;

POSITIVE VARIABLES QS,QD,QDPAID,QTR,PR,QRY,QFRY,QTRY;

* The following statements define the equations that will be used
* in the optimization, both the objective function and the constraints.

EQUATIONS
OBJ              Net Econonomic Benefit in Million Dollars
CONT(i1)         Continuity equation at district i to balance supply and demand
CONTR(i1)        Continuity equation for recycling at district i to balance supply and demand
CONT_UFW(i1,d)   Definition of water demand as a combination of paid and unpaid
PIPECAP(i1,j1)   Pipeline capacity constraint-fresh
PIPECAPY(i1,j1)  Pipeline capacity constraint-recycled
DEFNR(i1,d)      Definition of amount of water recycled
RECMAXQ(i)       Maximum use of recycled water in i1 in terms of quantity
RECMAXP(i)       Maximum use of recycled water in i1 in terms of percentage
RECCAP(i)        Plant capacity constraint
DESCAP(i)        Plant capacity constraint
QLOBND(i,d)      Lower Bound on Qty demanded
QUPBND(i,d)      Upper Bound on Qty demanded
QUOTASf1(i,d)    Quota constraint for districts with fresh water quotas
QUOTASf2(i)      Quota constraint for districts with fresh water quotas 2
QUOTASf3(i)      Quota constraint for districts with fresh water quotas 2
QUOTASf4(i)      Constraint on recycled water consumed under quota--not to exceed quota
QUOTASf5(i)      Constraint on fresh water consumed under quota--not to exceed quota
*QUOTASr1(i,d)    Quota constraint for districts with recycled water quotas
*QUOTASr2(i,d)    Quota constraint for districts with recycled water quotas 2
SPECIAL(i,d)     Special conditions for special users
*QLOSSEQ(i,d)
GAZAPIPE         Requires conveyance of at least 5 MCM from NC Lachish to Gaza
*IJPIPE           Requires conveyance of at least 55 MCM from Israel to Jordan
;


* The objective function begins with the sum over all districts of the
* integral under the demand curve (adjusted for national policies as
* described in a minute). The demand curve is represented by the
* equation: P = BQ(, and the integral is over Q.  Note that the integral
* cannot be taken from zero to the quantity demanded, since, with an
* inelastic demand curve (-1 ( (), the area would be infinite.  Hence we
* take the integral only from the quantity (QLOW) corresponding to the
* cutoff price (PMAX).  Since the evaluation of the integral at QLOW is
* just a constant, the term corresponding to that is omitted from the
* objective function.

* Where there are national policies, the private demand curve is adjusted
* to reflect the additional social value of water as revealed by those
* policies.  A good way to think about this is to think of the government
* as purchasing the water and then passing it on to consumers.  In such a
* case, we need to use the area under the government's demand curve.

* National policies can be of one (but not more than one) of three types:

*   1. The first of these is a percentage subsidy.  In this case, the
*      price paid by private consumers is equal to that "paid" by the
*      government times (1 - SUBRATE/100). (SUBRATE is expressed in
*      percentage points.) Equivalently, the price on the government's
*      demand curve corresponding to any quantity is the private price
*      (P = BQ() divided by (1 - SUBRATE/100). This is the adjustment
*      in the first term of the objective function.  (Of course, if there
*      is no percentage subsidy, SUBRATE = 0.)

*   2. The second kind of policy is a fixed amount per cubic meter. In
*      that case, the social value of water per cubic meter exceeds the
*      private value by the subsidy amount (and the government's demand
*      curve is obtained by raising the private one uniformly by that
*      amount).  The second term in the objective function (the one
*      involving SUBAMT) accounts for this shift.

*   3. The third kind of national policy is a fixed price policy (usually
*      called "quotas" in the program.  In this case, the government offers
*      consumers a fixed price for water (in one or more steps).  Here, it
*      is as though the government had a vertical demand curve at Q*
*      (since it stands ready to supply consumers that quantity at the
*      fixed price, P*.  The area under (to the left of) that curve is fixed.
*      (It is a rectangle whose top - not shown -is given by the maximum
*      cost that that the government would be willing to incur to effect
*      its policy.)  Hence there is no need to include that area in the
*      objective function.  The only benefits that matter are still the
*      benefits to the consumers - the area under their demand curve to
*      the left of Q*, and these are already included in the objective
*      function. Note that this remains true in the following diagram, where
*      the demand curve does not cross the fixed-price-policy curve.


* We next subtract from the objective function: the costs of extraction for
* all supply steps used; the cost of conveyance of fresh water for all fresh
* water conveyance links; the costs of recycling (above the level necessary
* for environmentally-safe disposal); the cost of conveyance for recycled
* water; and the environmental charge.  (Note that desalination plants are
* treated as providing extra supply steps, so that their cost is included
* as though it were an extraction cost.)




OBJ..          Z =E=
                 sum((ir,d),(B(ir,d)/((ALPHA(ir,d)+1) *
                 (1-SUBRATE(ir,d)/100))*((QD(ir,d)+QFRY(ir,d)+SUPMULT*NONPOTS(ir,d))**(ALPHA(ir,d)+1)
                 -QLO(ir,d)**(ALPHA(ir,d)+1))
                 + SUBAMT(ir,d)*(QD(ir,d)+QFRY(ir,d)+SUPMULT*NONPOTS(ir,d))))
                 - sum((ir,s),(QS(ir,s)*CS(ir,s)))
                 - sum((i1,j1)$ARC(i1,j1),(QTR(i1,j1)*CTR(i1,j1)))
                 - sum((ir,d),(QRY(ir,d)*CR(ir,d)))
                 - sum((i1,j1)$ARCR(i1,j1),(QTRY(i1,j1)*CTRY(i1,j1)))
                 - sum((ir,d),(QD(ir,d)+QFRY(ir,d))*CE(ir,d))
                 + sum((ir,d),(QFRY(ir,d)*CUSEREC(ir)))
                 - sum((ir,d),(QD(ir,d)+QFRY(ir,d))*CINTRA(ir))
                 - sum((ir,d)$LOSSES(ir,d), (LOSSES(ir,d)/2) *
                             (abs(MINQ(ir,d) - QD(ir,d))
                            + (MINQ(ir,d) - QD(ir,d)) ) );


* We now deal with various constraints.  The first of these is the constraint
* that the amount of fresh water consumed in any location must equal the
* amount extracted there plus the amount brought in from other locations
* minus the amount conveyed to other locations.  The next constraint does
* the parallel thing for recycled water.  Note that it is the shadow prices
* associated with these constraints that will be the shadow prices of the
* two types of water at the different locations. Note further that these
* constraints apply also to intermediate nodes where consumption and supply
* are constrained to be zero.



  CONT(i1)..     sum(d,QD(i1,d)) + SETASIDE (i1)*(1-sum(d,PR_UNPAID(i1,d)))  =E=
                  (sum(s,QS(i1,s)) +
                  sum(j1$ARC(j1,i1),QTR(j1,i1)*(1-TL(j1,i1)))-
                  sum(j1$ARC(i1,j1),QTR(i1,j1))) *
                  ((1-DL(i1)));

  CONTR(i1)..    sum(d,QFRY(i1,d)) =E=
                    sum(d,QRY(i1,d))+sum(j1$ARCR(j1,i1),QTRY(j1,i1)*(1-
                              TLR(j1,i1)))-sum(j1$ARCR(i1,j1),QTRY(i1,j1));

  PIPECAP(i1,j1)$ARC(i1,j1)..  QTR(i1,j1) =L= QTRUP(i1,j1);
  PIPECAPY(i1,j1)$ARCR(i1,j1)..  QTRY(i1,j1) =L= QTRYUP(i1,j1);

* A further constraint is that the total water demand, QD, is the sum of water
* paid-for and unpaid-for, with the unpaid-for water given as a percentage of
* the water setaside in each district.

  CONT_UFW(i1,d)..      QD(i1,d) =E= QDPAID(i1,d) +
       SETASIDE(i1)* PR_UNPAID(i1,d);



* The next equation states that the quantity recycled from a particular user
* class in a particular district equals the percentage recycled times the
* consumption of that user class.


 DEFNR(i1,d)..  QRY(i1,d) =E= PR(i1,d)*(QD(i1,d)+QFRY(i1,d));

 RECCAP(i)$(RECYCAP(i) gt 0)..    sum(d, QRY(i,d)) =L= RECYCAP(i);
 DESCAP(i)$DESAL(i)..    QS(i,"s5") =L= DESAL_CAP(i);

** The next two equations limit the use of recycled water in a district,
** first by quantity, and second by percentage

 RECMAXQ(i)$SUBQON(i)..  sum(d, QFRY(i,d)) =L=
                                         QRECMAX(i);

 RECMAXP(i)$SUBPON(i)..  sum(d, QFRY(i,d)) =L=
                      PRECMAX(i)*(QFRY(i,"agr") + QD(i,"agr"));


* The next two equations place upper and lower bounds on consumption.


 QLOBND(i,d)..  QD(i,d)+QFRY(i,d) =G= QLO(i,d);

 QUPBND(i,d)..  QD(i,d)+QFRY(i,d) =L= QMAX(i,d);


* The next four lines involve the treatment of fixed-price policies.  The
* first and third ensure that the amount consumed is not less than that
* which is demanded given from the government at fixed prices
* The second and fourth state that if the demand curve hits the fixed-price
* policy, then the corresponding amount is what is consumed.


*QUOTAS2(i,d).. (QD(i,d)+QFRY(i,d)) =G= QF(i,d);

*QUOTAS1(i,d)$(HITINDF(i,d) ne 0)..    (QD(i,d)+QFRY(i,d)) =E= QF(i,d);

*QUOTASr2(i,d).. QD(i,d) + QFRY(i,d) =G= QR(i,d);

*QUOTASr1(i,d)$(HITINDR(i,d) ne 0)..    QFRY(i,d) =E= QR(i,d);

QUOTASf1(i,d)$(QINDIC(i,d) and (ord(d) ne 3))..
                           QD(i,d) =E= QF(i,d);

QUOTASf2(i)$QINDIC(i,"agr").. QD(i,"agr") + QFRY(i,"agr") =G= QF(i,"agr");

QUOTASf3(i)$QINDIC(i,"agr").. QD(i,"agr") + QFRY(i,"agr") =G= QR(i,"agr");

QUOTASf4(i)$(QINDIC(i,"agr") and QR(i,"agr") ne 0)..
                               QFRY(i,"agr") =L= QR(i,"agr");

QUOTASf5(i)$(QINDIC(i,"agr") and QF(i,"agr") ne 0)..
                               QD(i,"agr") =L= QF(i,"agr");

* The next line contains the user specified common pool constraints
*$include "complcon.inc"

* The special conditions--minimum required quantities for users

SPECIAL(i,d)..    QD(i,d) =G= QREQUIRED(i,d);

*QLOSSEQ(i,d)$LOSSES(i,d)..    QLOSS(i,d) =E= max((MINQ(i,d) - QD(i,d)),0);

* Requirement of transfer of minimum of 5 MCM from NC Lachish to Gaza

GAZAPIPE.. QTR("II13", "P10") =G= 5;

* Requirement of transfer of minimum of 55 MCM from Israel to Jordan

*IJPIPE.. QTR("I6", "J4") =G= 55;


MODEL WAS /ALL/;
**was.optfile = 1;


*BOUNDS -- Definitional Bounds

        QS.UP(i,s)$(ord(s) ne 5) = QSMAX(i,s);          { Upper limit on Supply at each district for each source }
        QS.FX(in,s) = 0;                                { No supply in intermediate districts     }
        QD.FX(in,d) = 0;                                { No demand in intermediate districts     }
        PR.UP(i1,d) = PRMAX(i1,d);                   { Upper Bound for Wastewater Recycling    }
        PR.FX(in,d) = 0;                             { No recycling in intermediate districts  }
        QRY.FX(in,d) = 0;                            { No recycling in intermediate districts  }
        QFRY.FX(in,d) = 0;                           { No recycling in intermediate districts  }
        QRY.FX(i1,"AGR") = 0;                        { No recycling of agricultural water      }
        QFRY.FX(i1,"URB") = 0;                       { No recycled water for urban use         }
        QFRY.FX(i1,"IND") = 0;                       { No recycled water for industrial use    }
        QD.FX(i,d)$(QDL(i,d) le 1e-3) = 1e-4;
        QD.FX("I21",d) = 1e-4;

        QD.L(i,d) = 1;
        QD.L(i,d)$(QR(i,d)) = QDL(i,d);

        QD.UP(i,d) = 1E6;

*TEST
*        QD.UP("i7","AGR") = 100;

        QMAX(i,d) = 1E6;
        QLO(i,d) = (MAXP/B(i,d))**(1/ALPHA(i,d));

*    QFRY.UP("I12","AGR") = 51;
*     QFRY.UP("I13","AGR") = 5.65;
*    QFRY.UP("I14","AGR") = 75;
*    QFRY.UP("I15","AGR") = 43;
*    QFRY.UP("I16","AGR") = 25;
**
$ontext
** for admin run only
        QTRY.FX("i5","i10") = 19.74;
        QTRY.FX("i13","i18") = 42.7;
        QTRY.FX("i18","i17") = 29.19;
        QRY.FX("i5","urb") = 21.51;
        QRY.FX("i10","urb") = 5.28;
        QRY.FX("i10","ind") = 0.99;
        QRY.FX("i13","urb") = 46.90;
        QRY.FX("i17","urb") = 5.28;
        QRY.FX("i17","ind") = 0.66;
        QRY.FX("i18","urb") = 21.45;
        QRY.FX("i18","ind") = 1.98;
$offtext


* Note the order in which include files involving conveyance links are read
* in. The last of these to be read is the one that tells the program whether
* the model is to be countrified.  If you choose a national model, you
* cannot then put in links connecting the country in question to the others.

*OPTION DNLP = MINOS5;
was.holdfixed=1;
SOLVE WAS MAXIMIZING Z USING DNLP;

scalar modelstat;
modelstat = was.modelstat;]]></model>

<options><![CDATA[]]></options>

<gdx><base64>%s</base64></gdx>

<wantgdx><![CDATA[yes]]></wantgdx>

<comments><![CDATA[]]></comments>

</document>
    ''' % (result)
    
with open("WAS.xml", "w") as f:
    f.write(xml)
f.close()    
