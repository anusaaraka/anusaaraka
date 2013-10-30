
(defrule muck0
(declare (salience 5000))
(id-root ?id muck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaya_gazvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " muck.clp	muck0  "  ?id "  " ?id1 "  samaya_gazvA  )" crlf))
)

;Don't muck about here-go && do some work.
;
(defrule muck1
(declare (salience 4900))
(id-root ?id muck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-of_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gaMxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " muck.clp	muck1  "  ?id "  " ?id1 "  gaMxA_kara  )" crlf))
)

(defrule muck2
(declare (salience 4800))
(id-root ?id muck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gaMxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " muck.clp	muck2  "  ?id "  " ?id1 "  gaMxA_kara  )" crlf))
)

(defrule muck3
(declare (salience 4700))
(id-root ?id muck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaMxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  muck.clp 	muck3   "  ?id "  gaMxA_kara )" crlf))
)

(defrule muck4
(declare (salience 4600))
(id-root ?id muck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaMxagI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  muck.clp 	muck4   "  ?id "  gaMxagI )" crlf))
)

;"muck","N","1.gaMxagI"
;The muck here has created many diseases in the people.
;
;