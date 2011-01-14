
(defrule tiff0
(declare (salience 5000))
(id-root ?id tiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAXAraNa_JagadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tiff.clp 	tiff0   "  ?id "  sAXAraNa_JagadA )" crlf))
)

;"tiff","N","1.sAXAraNa_JagadA"
;The man had a tiff in the pub.
;The manager had a tiff with the clerk.
;
(defrule tiff1
(declare (salience 4900))
(id-root ?id tiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tiff.clp 	tiff1   "  ?id "  JagadZa )" crlf))
)

;"tiff","VI","1.JagadZanA"
;He tiffs often.
;
