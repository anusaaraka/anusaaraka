
(defrule chaperon0
(declare (salience 5000))
(id-root ?id chaperon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOkasI_karanevAlI_swrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chaperon.clp 	chaperon0   "  ?id "  cOkasI_karanevAlI_swrI )" crlf))
)

;"chaperon","N","1.cOkasI_karanevAlI_swrI"
;Her mother is her chaperon.
;
(defrule chaperon1
(declare (salience 4900))
(id-root ?id chaperon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOkasI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chaperon.clp 	chaperon1   "  ?id "  cOkasI_kara )" crlf))
)

;"chaperon","VT","1.cOkasI_karanA{mahilA_kI}"
;Her mother still chaperons her.
;
