
(defrule superior0
(declare (salience 5000))
(id-root ?id superior)
?mng <-(meaning_to_be_decided ?id)
(or (id-cat_coarse ?id adjective) (subject-subject_samAnAXikaraNa ? ?id)) ;2nd condition Added Sukhada for "He disputed that our program was superior."
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id variRTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  superior.clp 	superior0   "  ?id "  variRTa )" crlf))
)

;"superior","Adj","1.variRTa"
;A captain is superior to a lieutenant in the army.
;--"2.SreRTa"
;The quality of wheat from the northern region is superior.
;
(defrule superior1
(declare (salience 4900))
(id-root ?id superior)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZe_loga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  superior.clp 	superior1   "  ?id "  badZe_loga )" crlf))
)

;"superior","N","1.badZe_loga"
;Be respectful to your superiors.
;
