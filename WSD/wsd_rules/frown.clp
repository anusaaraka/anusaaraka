
(defrule frown0
(declare (salience 5000))
(id-root ?id frown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wyOrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frown.clp 	frown0   "  ?id "  wyOrI )" crlf))
)

;"frown","N","1.wyOrI"
;He always has a frown on his face. 
;
(defrule frown1
(declare (salience 4900))
(id-root ?id frown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wyOrI_caDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frown.clp 	frown1   "  ?id "  wyOrI_caDA )" crlf))
)

;"frown","VI","1.wyOrI_caDAnA"
;Rita's mother frowned at her when she came late.
;
