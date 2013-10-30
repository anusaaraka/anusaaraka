
(defrule trespass0
(declare (salience 5000))
(id-root ?id trespass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 against)
(kriyA-against_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aparAXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trespass.clp	trespass0  "  ?id "  " ?id1 "  aparAXa_kara  )" crlf))
)

(defrule trespass1
(declare (salience 4900))
(id-root ?id trespass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 against)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aparAXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trespass.clp	trespass1  "  ?id "  " ?id1 "  aparAXa_kara  )" crlf))
)

(defrule trespass2
(declare (salience 4800))
(id-root ?id trespass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awikramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trespass.clp 	trespass2   "  ?id "  awikramaNa_kara )" crlf))
)

(defrule trespass3
(declare (salience 4700))
(id-root ?id trespass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awikramaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trespass.clp 	trespass3   "  ?id "  awikramaNa )" crlf))
)

;"trespass","N","1.awikramaNa"
;It is a tresspass to enter other people's property without their permission.
;
;