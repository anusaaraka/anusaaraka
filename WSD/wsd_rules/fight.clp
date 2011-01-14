;Added by Meena(22.02.10)
;She is fighting for her rights . 
(defrule fight0
(declare (salience 5000))
(id-root ?id fight)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fight.clp     fight1   "  ?id "  lada )" crlf))
)




(defrule fight1
(declare (salience 5000))
(id-root ?id fight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fight.clp 	fight1   "  ?id "  ladZAI )" crlf))
)

;"fight","N","1.ladZAI"
;There was a fight between Mohan && Shayam.
;He always gets into a fight with his friends on small issues.
;--"2.ladZane_kI_kRamawA"
;There was a lot of fight left in him.
;
(defrule fight2
(declare (salience 4900))
(id-root ?id fight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladAI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fight.clp 	fight2   "  ?id "  ladAI_kara )" crlf))
)

;"fight","V","1.ladAI_karanA"
;The kids were fighting over a non-issue.
;
