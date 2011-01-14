
(defrule reply0
(declare (salience 5000))
(id-root ?id reply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id javAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reply.clp 	reply0   "  ?id "  javAba )" crlf))
)

;"reply","N","1.javAba"
;I am grateful to you for your favourable reply.
;
(defrule reply1
(declare (salience 4900))
(id-root ?id reply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id javAba_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reply.clp 	reply1   "  ?id "  javAba_xe )" crlf))
)

;"reply","VTI","1.javAba_xenA"
;I have already replied to your letter.
;--"2.baxale_me_kuCa_karanA"
;Soldiers have replied to the enemy's fire.
;
