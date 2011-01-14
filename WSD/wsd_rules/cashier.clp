
(defrule cashier0
(declare (salience 5000))
(id-root ?id cashier)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rokadZiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cashier.clp 	cashier0   "  ?id "  rokadZiyA )" crlf))
)

;"cashier","N","1.rokadZiyA/koRAXyakRa"
;He is a cashier in the bank.
;
(defrule cashier1
(declare (salience 4900))
(id-root ?id cashier)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxacyuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cashier.clp 	cashier1   "  ?id "  paxacyuwa_kara )" crlf))
)

;"cashier","V","1.paxacyuwa_karanA/nikAla_xenA"
;He was cashiered from the Army for indiscipline.
;
