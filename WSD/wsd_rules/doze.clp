
(defrule doze0
(declare (salience 5000))
(id-root ?id doze)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 UzGa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " doze.clp	doze0  "  ?id "  " ?id1 "  UzGa  )" crlf))
)

;He dozed off in the History class.
;vaha iwihAsa kI klAsa meM UzGane lagA
(defrule doze1
(declare (salience 4900))
(id-root ?id doze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzGa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  doze.clp 	doze1   "  ?id "  UzGa )" crlf))
)

;"doze","N","1.UzGa/JapakI/nIMxa"
;We had a little doze on the bus.
;
(defrule doze2
(declare (salience 4800))
(id-root ?id doze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzGa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  doze.clp 	doze2   "  ?id "  UzGa )" crlf))
)

;"doze","VI","1.UzGanA/JapakI_lenA"
;She was dozing in the class.
;
