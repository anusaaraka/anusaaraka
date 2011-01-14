
(defrule borderline0
(declare (salience 5000))
(id-root ?id borderline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo_niSciwa_rUpa_se_prAsaMgika_na_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  borderline.clp 	borderline0   "  ?id "  jo_niSciwa_rUpa_se_prAsaMgika_na_ho )" crlf))
)

;"borderline","Adj","1.jo_niSciwa_rUpa_se_prAsaMgika_na_ho"
;He is a borderline student.
;
(defrule borderline1
(declare (salience 4900))
(id-root ?id borderline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImAreKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  borderline.clp 	borderline1   "  ?id "  sImAreKA )" crlf))
)

;"borderline","N","1.sImAreKA"
;The borderline between formal && informal behavior is diffecult express.
;
