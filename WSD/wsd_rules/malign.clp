
(defrule malign0
(declare (salience 5000))
(id-root ?id malign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ahiwakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  malign.clp 	malign0   "  ?id "  ahiwakara )" crlf))
)

;"malign","Adj","1.ahiwakara"
;A malign influence.
;
(defrule malign1
(declare (salience 4900))
(id-root ?id malign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxanAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  malign.clp 	malign1   "  ?id "  baxanAma_kara )" crlf))
)

;"malign","V","1.baxanAma_karanA"
;He is all set to malign you.
;
