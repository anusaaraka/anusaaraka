;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;From an iron and steel plant where iron ore was The Crab Nebula. [Gyan nidhi corpus]
;एक लोहा और इस्पात कारखाने से जहाँ लोहे की खनिज मिट्टी क्रैब नेबुला तारा था . 
(defrule plant0
(declare (salience 5000))
(id-root ?id plant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 iron|steel|metal|nuclear|power)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraKAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plant.clp 	plant0   "  ?id "  kAraKAnA )" crlf))
)

(defrule plant1
(declare (salience 4900))
(id-root ?id plant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vanaspawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plant.clp 	plant1   "  ?id "  vanaspawi )" crlf))
)

;"plant","N","1.vanaspawi"
;Plants need light && water.
;--"2.saMyanwra"
;The new plant is decided to develop the tools for artisans.
;
(defrule plant2
(declare (salience 4800))
(id-root ?id plant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ropa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plant.clp 	plant2   "  ?id "  ropa )" crlf))
)

;"plant","V","1.ropanA"
;Each one plant one.
;--"2.basAnA"
;I planted my feet into the clay && walked over.
;
;LEVEL 
;
;
;"plant","N","1.vanaspawi"
;Plants need light && water.
;--"2.saMyanwra"
;The new plant is decided to develop the tools for artisans.
;
;"plant","V","1.ropanA"
;Each one plant one.
;--"2.basAnA"
;I planted my feet into the clay && walked over.
;
;--------------------------------------------------------
;
;sUwra : pOXA/saMyanwra[_ropaNa_karanA]
;
;yaha pOXe ke mUla se saMyanwra arWa meM AyA hE samBavawaH . kAraNa- pOXe ke saBI guNa
;saMyanwra meM A rahe hEM . xonoM kI xeKaBAla va xonoM kA ropA jAnA . inakA kriyArUpa
;ropanA yA basAnA( xonoM kriyAoM kA ekArWa ) hEM.
;
;
