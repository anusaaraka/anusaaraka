
(defrule mail0
(declare (salience 5000))
(id-root ?id mail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mail.clp 	mail0   "  ?id "  dAka )" crlf))
)

;"mail","N","1.dAka"
;The letter came in the mail today.
;--"2.kavaca"
;A coat of mail was worn by the soldiers.
;
(defrule mail1
(declare (salience 4900))
(id-root ?id mail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAka_se_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mail.clp 	mail1   "  ?id "  dAka_se_Beja )" crlf))
)

;"mail","V","1.dAka_se_BejanA"
;I mailed the letter three days back.
;
