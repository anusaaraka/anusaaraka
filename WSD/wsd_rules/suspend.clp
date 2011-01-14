
(defrule suspend0
(declare (salience 5000))
(id-root ?id suspend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id suspended )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWagiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  suspend.clp  	suspend0   "  ?id "  sWagiwa )" crlf))
)

;"suspended","Adj","1.sWagiwa"
;
(defrule suspend1
(declare (salience 4900))
(id-root ?id suspend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWagiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suspend.clp 	suspend1   "  ?id "  sWagiwa_kara )" crlf))
)

;default_sense && category=verb	nilambiwa_kara	0
;"suspend","V","1.nilambiwa_karanA"
;He was suspended from his job for misconduct towards his superior.
;--"2.sWagiwa_karanA"
;Police had suspended the case.
;
;