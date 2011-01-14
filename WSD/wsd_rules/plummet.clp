
(defrule plummet0
(declare (salience 5000))
(id-root ?id plummet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plummet.clp 	plummet0   "  ?id "  sAhula )" crlf))
)

;"plummet","N","1.sAhula"
;The labourers use plummet while constructing the houses.
;
(defrule plummet1
(declare (salience 4900))
(id-root ?id plummet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZI_se_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plummet.clp 	plummet1   "  ?id "  wejZI_se_gira )" crlf))
)

;"plummet","V","1.wejZI_se_giranA"
;The rock plummet down the mountain side.
;
