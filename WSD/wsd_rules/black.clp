
;Added by Meena(18.7.11)
;No, it was not Black Monday. 
(defrule black0
(declare (salience 5000))
(id-root ?id black|Black)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id1 ?id)(proper_noun-waxviSiRta_proper_noun ?id ?id1)(samAsa  ?id1 ?id))
;(id-root ?id1 day|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday)
(id-root ?id1 day|monday|tuesday|wednesday|thursday|friday|saturday|sunday);Modified to lowcase by Roja(13-06-13). As now we are using NER to get PropN info , NER doesnt recognize weekdays as Named Entities. So changed to lowcase. Ex:No, it was not Black Monday. 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aSuBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp     black0   "  ?id "  aSuBa )" crlf))
)




;Salience reduced by Meena(18.7.11)
(defrule black1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp 	black1   "  ?id "  kAlA )" crlf))
)


;Salience reduced by Meena(18.7.11)
(defrule black2
(declare (salience 4900))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp 	black2   "  ?id "  kAlA )" crlf))
)


;"black","Adj","1.kAlA/SyAma"
;The shop specializes in black leather jackets.
;black deeds
;--"2.aMXerA"
;The future looked black
;a black moonless night
;--"3.BayaMkara"
;A face black with fury
;--"4.uxAsa/sogI"
;Black humor
;Black propaganda
;
;
;"black","Adj","1.kAlA/SyAma"
;The shop specializes in black leather jackets.
;black deeds
;--"2.aMXerA"
;The future looked black
;a black moonless night
;--"3.BayaMkara"
;A face black with fury
;--"4.uxAsa/sogI"
;Black humor
;Black propaganda
;
