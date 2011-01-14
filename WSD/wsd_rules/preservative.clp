
(defrule preservative0
(declare (salience 5000))
(id-root ?id preservative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parirakRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  preservative.clp 	preservative0   "  ?id "  parirakRiwa )" crlf))
)

;"preservative","Adj","1.parirakRiwa"
;Timber should be treated with a preservative solution before use.
;
(defrule preservative1
(declare (salience 4900))
(id-root ?id preservative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMrakRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  preservative.clp 	preservative1   "  ?id "  saMrakRaka )" crlf))
)

;"preservative","N","1.saMrakRaka"
;Jams && jellies  contain added preservatives.
;
