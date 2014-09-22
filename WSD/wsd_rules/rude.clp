;$$$ Modified by Shirisha Manju 02-09-14 
(defrule rude0
(declare (salience 5000))
(id-root ?id rude)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBaxra));modified 'aBaxra-' as 'aBaxra' by Shirisha Manju 02-09-14
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rude.clp 	rude0   "  ?id "  aBaxra )" crlf))
)

(defrule rude1
(declare (salience 4900))
(id-root ?id rude)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aSiRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rude.clp 	rude1   "  ?id "  aSiRta )" crlf))
)

;"rude","Adj","1.aSiRta"
;He got annoyed with her rude behaviour.                   
;I don't like rude jokes.
;She has been feeding rusk to her baby since he was five months old.
;
;
