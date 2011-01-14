
(defrule echo0
(declare (salience 5000))
(id-root ?id echo)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiXvani))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  echo.clp 	echo0   "  ?id "  prawiXvani )" crlf))
)

;"echo","N","1.prawiXvani"
;The tomb of Golkonda has a wonderful echo.
;
(defrule echo1
(declare (salience 4900))
(id-root ?id echo)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiXvaniwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  echo.clp 	echo1   "  ?id "  prawiXvaniwa_ho )" crlf))
)

;"echo","VI","1.prawiXvaniwa_honA"
;The solitary reaper's shouts echoed throughn the forest.
;
(defrule echo2
(declare (salience 4800))
(id-root ?id echo)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiXvani_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  echo.clp 	echo2   "  ?id "  prawiXvani_kara )" crlf))
)

;"echo","VT","1.prawiXvani_karanA"
;The parrot echoed his master's every word.
;
