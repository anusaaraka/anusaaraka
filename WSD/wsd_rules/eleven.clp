
(defrule eleven0
(declare (salience 5000))
(id-root ?id eleven)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gyAraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eleven.clp 	eleven0   "  ?id "  gyAraha )" crlf))
)

;"eleven","Det","1.gyAraha"
;There are eleven players in a cricket team.
;
(defrule eleven1
(declare (salience 4900))
(id-root ?id eleven)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gyAraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eleven.clp 	eleven1   "  ?id "  gyAraha )" crlf))
)

;"eleven","N","1.gyAraha"
;There are eleven players in a cricket team.
;
