
(defrule paw0
(declare (salience 5000))
(id-root ?id paw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paw.clp 	paw0   "  ?id "  paMjA )" crlf))
)

;"paw","N","1.paMjA"
;Lion cubs have soft paws.
;
(defrule paw1
(declare (salience 4900))
(id-root ?id paw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMje_se_Kuraca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paw.clp 	paw1   "  ?id "  paMje_se_Kuraca )" crlf))
)

;"paw","VTI","1.paMje_se_KuracanA"
;The kitten pawed at the door.
;--"2.cApalUsI_karanA"
;He has been pawing her inorder to get her favour. *
;--"3.burI_waraha_hAWa_lagAnA"
;He was made to apologise for trying to paw the lady.
;
