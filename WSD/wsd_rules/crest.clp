
(defrule crest0
(declare (salience 5000))
(id-root ?id crest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalagZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crest.clp 	crest0   "  ?id "  kalagZI )" crlf))
)

;"crest","N","1.kalagZI"
;Pecock with its long crest looks more beautiful.
;--"2.SiKara"
;After her victory in the match,she was on the crest of a wave.   
;--"3.DAla"
;N.C.C.cadets with crest && motto on their caps look very smart. 
;
(defrule crest1
(declare (salience 4900))
(id-root ?id crest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_caDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crest.clp 	crest1   "  ?id "  Upara_caDZA )" crlf))
)

;"crest","VT","1.Upara_caDZAnA"
;The river crests downwards towards the foothills.
;--"2.parroM_kA_wurrA_lagAnA"
;Red-Indians crest their heads with eagle feathers.
;
