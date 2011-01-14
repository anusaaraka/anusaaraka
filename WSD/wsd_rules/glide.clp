
(defrule glide0
(declare (salience 5000))
(id-root ?id glide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glide.clp 	glide0   "  ?id "  bahAva )" crlf))
)

(defrule glide1
(declare (salience 4900))
(id-root ?id glide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id visarpaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glide.clp 	glide1   "  ?id "  visarpaNa_kara )" crlf))
)

;"glide","V","1.visarpaNa_karanA"
;The aircraft's engine failed yet it was glided down to a safe landing. 
;
;