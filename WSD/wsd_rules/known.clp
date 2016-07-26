;Added by Meena(9.3.11)
;Mysore,also known as the city of palaces, is just 139 kms by road from Bangalore. (OL) 
(defrule also_known_as
(declare (salience 6000))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI ?id ?id1)
(id-root =(+ ?id 1) as)
(id-root =(- ?id 1) also)
(not(id-root =(- ?id 2) be))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  =(- ?id 1)  =(+ ?id 1) ke_rUpa_meM_BI_jAnA_jAnevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " known.clp  also_known_as  "  ?id " " (- ?id 1)"  " (+ ?id 1) "  ke_rUpa_meM_BI_jAnA_jAnevAlA  )" crlf))
)



;Added by Meena(8.3.11)
;Mysore, known as the city of palaces, is just 139 kms by road from Bangalore. (OL)
(defrule known_as
(declare (salience 6000))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI ?id ?id1)
(id-root =(+ ?id 1) as)
(not(id-root =(- ?id 1) be))
(not(id-root =(- ?id 1) also))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) ke_rUpa_meM_jAnA_jAnevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " known.clp  known_as  "  ?id "  " (+ ?id 1) "  ke_rUpa_meM_jAnA_jAnevAlA  )" crlf))
)



(defrule known0
(declare (salience 5000))
(id-root ?id known)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  known.clp 	known0   "  ?id "  vixiwa )" crlf))
)

;"known","N","1.vixiwa"
;He is a musician known throughout the world.
;It is a known quantity of milk.
;the limits of the known world
;--"2.jAnA_huA"
;He is a known criminal.
;
(defrule known1
(declare (salience 4900))
(id-root ?id known)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jFAwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  known.clp 	known1   "  ?id "  jFAwa_ho )" crlf))
)

;"known","V","1.jFAwa_honA"
;Bhagvat Gita is known to every one.
;Now-a-days, computer is known to a common man.
;
