
(defrule operate0
(declare (salience 5000))
(id-root ?id operate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operate.clp 	operate0   "  ?id "  calA )" crlf))
)

(defrule operate1
(declare (salience 4900))
(id-root ?id operate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operate.clp 	operate1   "  ?id "  kAma_kara )" crlf))
)

;"operate","VTI","1.kAma_karanA"
;The new machine is not operating properly.
;--"2.cIra_PAdZa_karanA"
;The doctors decided to operate him immediately.
;
;
