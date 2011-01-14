
(defrule azure0
(declare (salience 5000))
(id-root ?id azure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AsamAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  azure.clp 	azure0   "  ?id "  AsamAnI )" crlf))
)

;"azure","Adj","1.AsamAnI"
;I have a dress of azure silk.
;mere pAsa AsamAnI silka kI dresa hE.
;
(defrule azure1
(declare (salience 4900))
(id-root ?id azure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlAkASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  azure.clp 	azure1   "  ?id "  nIlAkASa )" crlf))
)

;"azure","N","1.nIlAkASa"
;Usually swimming pools reflect the azure of the sky.
;prAya:svImiMga pUla nIlAkASa prawibiMbiwa karawe hEM.
;
