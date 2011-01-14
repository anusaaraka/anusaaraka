
(defrule nurse0
(declare (salience 5000))
(id-root ?id nurse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricArikA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nurse.clp 	nurse0   "  ?id "  paricArikA )" crlf))
)

;"nurse","N","1.paricArikA"
;The nurse gave a lot of attention to him.
;
(defrule nurse1
(declare (salience 4900))
(id-root ?id nurse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUXa_pilAkara_bacce_ko_pAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nurse.clp 	nurse1   "  ?id "  xUXa_pilAkara_bacce_ko_pAla )" crlf))
)

;"nurse","V","1.xUXa_pilAkara_bacce_ko_pAlanA"
;She nursed her child && made it sleep.
;
(defrule nurse2
(declare (salience 4800))
(id-root ?id nurse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upacaryA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nurse.clp 	nurse2   "  ?id "  upacaryA_kara )" crlf))
)

;"nurse","VT","1.upacaryA_karanA"
;He nursed his cold with Chinese herbs.
;
