
(defrule away0
(declare (salience 5000))
(id-root ?id away)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  away.clp 	away0   "  ?id "  - )" crlf)))

(defrule away1
(declare (salience 4900))
(id-root ?id away)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  away.clp 	away1   "  ?id "  xUra )" crlf))
)

;"away","Adv","1.xUra"
;My birthday is only a week away from today.
;merA janmaxina Aja se kevala eka sapwAha xUra hE.
;--"2.bAhara"
;Preeti is away on vacation for one month.
;prIwi CuttiyoM meM eka mahIne ke lie bAhara gaI huI hE.
;--"3.lagAwAra"
;They worked away for three days to get it finished.
;unhone use samApwa karane ke lie lagAwAra wIna xinOM waka kAma kiyA.
;
;
;LEVEL 
;Headword : away
;
;Examples --
;
;"away","Adv","1.xUrI_para"
;Keep your toys away from the dog.
;apane KilOnoM ko kUwwe se xUrI para raKo.
;--"2.bAhara"  <--xUra
;She is away on vacation for one month
;vaha CuttiyoM meM eka mahIneM ke lie bAhara gaI hE 
;--"3.lagAwAra" 
;They worked away all day
;ve lagAwAra sArA xina kAma kie 
;   
;sUwra : xUrI_para/lagAwAra
;
