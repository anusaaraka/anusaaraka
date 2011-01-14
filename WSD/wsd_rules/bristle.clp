
(defrule bristle0
(declare (salience 5000))
(id-root ?id bristle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BarA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bristle.clp	bristle0  "  ?id "  " ?id1 "  BarA_huA  )" crlf))
)

;The city was bristling with the foreigners.
;Sahara vixeSiyoM se BarA huA WA
(defrule bristle1
(declare (salience 4900))
(id-root ?id bristle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUara_kA_bAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bristle.clp 	bristle1   "  ?id "  sUara_kA_bAla )" crlf))
)

;"bristle","N","1.sUara_kA_bAla"
;The brush has neat bristles.
;
(defrule bristle2
(declare (salience 4800))
(id-root ?id bristle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXA_KadZA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bristle.clp 	bristle2   "  ?id "  sIXA_KadZA_ho )" crlf))
)

;"bristle","VT","1.sIXA_KadZA_honA"
;Bristle yourself to hear the news.
;
