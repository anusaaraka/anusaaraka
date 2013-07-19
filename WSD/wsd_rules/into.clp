
(defrule into0
(declare (salience 5000))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) integer|whole number|number )
(id-word =(+ ?id 1) integer|whole number|number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into0   "  ?id "  guNA )" crlf))
)

(defrule into1
(declare (salience 4900))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) inquiry)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into1   "  ?id "  kI )" crlf))
)

(defrule into2
(declare (salience 4800))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) custody|business|human|coins) ; Added coins in the list by Aditya and Hardik, IIT(BHU)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into2   "  ?id "  meM )" crlf))
)

(defrule into3
(declare (salience 4700))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_aMxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into3   "  ?id "  ke_aMxara )" crlf))
)

;Added by Aditya and Hardik, IIT(BHU)
;I do not want to get into problem.
;It is easy to get into a fight.
(defrule into4
(declare (salience 5100))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) get)
(kriyA-into_saMbanXI =(- ?id 1) ?id1)
(id-root ?id1 problem|trouble|situation|war|fight|illusion|argument)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) meM_UlaJanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " into.clp	into4  "  ?id "  " (- ?id 1) "  meM_UlaJanA  )" crlf))
)

;Added by Aditya and Hardik, IIT(BHU)
;I want to get into a good college.
(defrule into5
(declare (salience 5000))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) get)
(kriyA-into_saMbanXI =(- ?id 1) ?id1)
(or(id-word ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str)))(id-word ?id1 bus|car|train|flight))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) meM_jAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " into.clp	into5  "  ?id "  " (- ?id 1) "  meM_jAnA  )" crlf))
)


;"into","Prep","1.aMxara_ko"
;You come into the house.
;--"2.guNiwa_karane_para"
;5 into 1.is fifty.
;
