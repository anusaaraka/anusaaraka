
(defrule eighteen0
(declare (salience 5000))
(id-root ?id eighteen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aTAraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eighteen.clp 	eighteen0   "  ?id "  aTAraha )" crlf))
)

;"eighteen","Det","1.aTAraha"
;Bhagavat Gita has eighteen chapters.
;
(defrule eighteen1
(declare (salience 4900))
(id-root ?id eighteen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aTAraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eighteen.clp 	eighteen1   "  ?id "  aTAraha )" crlf))
)

;"eighteen","N","1.aTAraha"
;Bhagavat Gita has eighteen chapters.
;
