
(defrule drum0
(declare (salience 5000))
(id-root ?id drum)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 punarUkwi_xvArA_praBAva_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drum.clp	drum0  "  ?id "  " ?id1 "  punarUkwi_xvArA_praBAva_dAla  )" crlf))
)

;She never does her exercise daily unless I drum it in.
;vaha waba waka niwya vyAyAma nahIM karawI jaba waka mEM use bAra-bAra na kahUz
(defrule drum1
(declare (salience 4900))
(id-root ?id drum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drum.clp 	drum1   "  ?id "  Dola )" crlf))
)

(defrule drum2
(declare (salience 4800))
(id-root ?id drum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dola_bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drum.clp 	drum2   "  ?id "  Dola_bajA )" crlf))
)

;"drum","VT","1.Dola_bajAnA/bajAnA"
;Rain drummed against the windshield
;
;
