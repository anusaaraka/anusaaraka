
(defrule balance0
(declare (salience 5000))
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warAjZU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  balance.clp 	balance0   "  ?id "  warAjZU )" crlf))
)

;"balance","N","1.warAjZU"
;One should always buy only ISI marked balance.
;
(defrule balance1
(declare (salience 4900))
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwulana_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  balance.clp 	balance1   "  ?id "  saMwulana_raKa )" crlf))
)

;"balance","V","1.saMwulana_raKa"
;--"2.saMwulana_raKanA"
;Students should be taught to balance their time between games && studies.
;--"3.bakAyA_nikAlanA"
;Our accountant has not yet found the balance of our company's annual account.
;
