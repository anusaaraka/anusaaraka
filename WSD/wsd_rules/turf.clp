
(defrule turf0
(declare (salience 5000))
(id-root ?id turf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wqNAcCAxiwa_BUmi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turf.clp 	turf0   "  ?id "  wqNAcCAxiwa_BUmi )" crlf))
)

;"turf","N","1.wqNAcCAxiwa_BUmi"
;Children are playing on the turf.
;--"2.GudaxOda_kA_mExAna"
;These horses are the champions of the turf.
;
(defrule turf1
(declare (salience 4900))
(id-root ?id turf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAsa_biCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turf.clp 	turf1   "  ?id "  GAsa_biCA )" crlf))
)

;"turf","V","1.GAsa_biCAnA"
;You have to turf the field.
;
