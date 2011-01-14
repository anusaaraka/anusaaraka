
(defrule claw0
(declare (salience 5000))
(id-root ?id claw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  claw.clp 	claw0   "  ?id "  paMjA )" crlf))
)

;"claw","N","1.paMjA"
;The sharp claw of the cat penetrated into my skin.
;
(defrule claw1
(declare (salience 4900))
(id-root ?id claw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMjA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  claw.clp 	claw1   "  ?id "  paMjA_mAra )" crlf))
)

;"claw","V","1.paMjA_mAranA"
;The cat clawed my hand.
;
