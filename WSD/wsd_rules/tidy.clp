
(defrule tidy0
(declare (salience 5000))
(id-root ?id tidy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_TAka_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tidy.clp tidy0 " ?id "  TIka_TAka_kara )" crlf)) 
)

(defrule tidy1
(declare (salience 4900))
(id-root ?id tidy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TIka_TAka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tidy.clp	tidy1  "  ?id "  " ?id1 "  TIka_TAka_kara  )" crlf))
)

(defrule tidy2
(declare (salience 4800))
(id-root ?id tidy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasWiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tidy.clp 	tidy2   "  ?id "  vyavasWiwa_kara )" crlf))
)

(defrule tidy3
(declare (salience 4700))
(id-root ?id tidy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Putakara_sAmAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tidy.clp 	tidy3   "  ?id "  Putakara_sAmAna )" crlf))
)

;"tidy","N","1.Putakara_sAmAna"
;She bought a whole lot of tidies for her office table.
;
;