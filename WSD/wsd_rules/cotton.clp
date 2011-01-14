
(defrule cotton0
(declare (salience 5000))
(id-root ?id cotton)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJane_laganA_yA_samaJa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cotton.clp	cotton0  "  ?id "  " ?id1 "  samaJane_laganA_yA_samaJa_jA  )" crlf))
)

;Don't worry!she'll soon understand your situation.
;cinwA mawa karo ! vaha jalxI hI wumhArI sWiwi samaJa jAegI
(defrule cotton1
(declare (salience 4900))
(id-root ?id cotton)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cotton.clp 	cotton1   "  ?id "  kapAsa )" crlf))
)

;default_sense && category=noun	kapAsa	0
;"cotton","N","1.kapAsa"
;India has an ideal climate for the growth of cotton.
;--"2.sUwI_kapadZA"
;Dresses of cotton is good for summer.
;
;