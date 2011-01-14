
(defrule according0
(declare (salience 5000))
(id-root ?id according)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_anusAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  according.clp 	according0   "  ?id "  ke_anusAra )" crlf))
)

(defrule according1
(declare (salience 4900))
(id-root ?id according)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_anusAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  according.clp 	according1   "  ?id "  ke_anusAra )" crlf))
)

;"according","Prep","1.ke_anusAra"
;The work was done according to his instructions.
;
