
(defrule pace0
(declare (salience 5000))
(id-root ?id pace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaxama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pace.clp 	pace0   "  ?id "  kaxama )" crlf))
)

;"pace","N","1.kaxama"
;Two paces forward from this point is the meeting place.
;--"2.gawi"
;He was walking at a slow pace.
;
(defrule pace1
(declare (salience 4900))
(id-root ?id pace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cahalakaxamI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pace.clp 	pace1   "  ?id "  cahalakaxamI_kara )" crlf))
)

;"pace","V","1.cahalakaxamI_karanA"
;He was pacing up && down the platform.
;
