;Modified by Meena(26.5.11) meaning changed from "Bezta" to "sAkRAwkAra".
;The interview lasted about an hour. 
;Applicants for posts are called for interview.
(defrule interview0
(declare (salience 5000))
(id-root ?id interview)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAkRAwkAra))
;(assert (id-wsd_root_mng ?id Bezta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interview.clp 	interview0   "  ?id "  sAkRAwkAra )" crlf))
)


;
(defrule interview1
(declare (salience 4900))
(id-root ?id interview)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMtaravyU_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interview.clp 	interview1   "  ?id "  iMtaravyU_le )" crlf))
)

;"interview","V","1.iMtaravyU_lenA"
;We interview many people for the job.
;
