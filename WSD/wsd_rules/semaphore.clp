
(defrule semaphore0
(declare (salience 5000))
(id-root ?id semaphore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id safkewa_paxXawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  semaphore.clp 	semaphore0   "  ?id "  safkewa_paxXawi )" crlf))
)

;"semaphore","N","1.safkewa_paxXawi"
;The show started by a welcome in semaphore by the children.
;--"2.safkewa_swamBa"
;Indian Railways is even today sending signals by the same old semaphores.
;
(defrule semaphore1
(declare (salience 4900))
(id-root ?id semaphore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_se_sUciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  semaphore.clp 	semaphore1   "  ?id "  saMkewa_se_sUciwa_kara )" crlf))
)

;"semaphore","V","1.saMkewa_se_sUciwa_karanA"
;Semaphore to somebody that help is needed.
;
