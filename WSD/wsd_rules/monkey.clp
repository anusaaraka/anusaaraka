
(defrule monkey0
(declare (salience 5000))
(id-root ?id monkey)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 haswakRepa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " monkey.clp	monkey0  "  ?id "  " ?id1 "  haswakRepa_kara  )" crlf))
)

;The girl was so naughty that she was monkeying about in the party all the time.
;
(defrule monkey1
(declare (salience 4900))
(id-root ?id monkey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  monkey.clp 	monkey1   "  ?id "  baMxara )" crlf))
)

;"monkey","N","1.baMxara"
;The mokey ate potatoes from the box.
;"mono","N","1.EkavarNa"
;My father gifted one mono record player on my birthday.
;
;