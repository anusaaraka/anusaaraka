
(defrule aggregate0
(declare (salience 5000))
(id-root ?id aggregate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aggregate.clp 	aggregate0   "  ?id "  kula )" crlf))
)

;"aggregate","Adj","1.kula"
;The aggregate profit && loss of the company will be known soon.
;
(defrule aggregate1
(declare (salience 4900))
(id-root ?id aggregate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNa_yoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aggregate.clp 	aggregate1   "  ?id "  pUrNa_yoga )" crlf))
)

;"aggregate","N","1.pUrNa_yoga"
;At the end of financial year, business houses find aggregate of profit && loss.   
;
(defrule aggregate2
(declare (salience 4800))
(id-root ?id aggregate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgraha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aggregate.clp 	aggregate2   "  ?id "  saMgraha_kara )" crlf))
)

;"aggregate","VT","1.saMgraha_karanA"
;Our group aggregate books.
;
