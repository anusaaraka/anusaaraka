
(defrule censure0
(declare (salience 5000))
(id-root ?id censure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niMxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  censure.clp 	censure0   "  ?id "  niMxA )" crlf))
)

;"censure","N","1.niMxA"
;The celebrities become victims of publlic censure.
;
(defrule censure1
(declare (salience 4900))
(id-root ?id censure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niMxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  censure.clp 	censure1   "  ?id "  niMxA_kara )" crlf))
)

;"censure","V","1.niMxA_karanA"
;Celebrities are often censured by the public.
;
