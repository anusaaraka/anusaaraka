
(defrule gore0
(declare (salience 5000))
(id-root ?id gore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamA_huA_KUna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gore.clp 	gore0   "  ?id "  jamA_huA_KUna )" crlf))
)

;"gore","N","1.jamA_huA_KUna"
;The film was full of gore && violence.
;
(defrule gore1
(declare (salience 4900))
(id-root ?id gore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIMga_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gore.clp 	gore1   "  ?id "  sIMga_mAra )" crlf))
)

;"gore","V","1.sIMga_mAranA"
;He was gored to death by a bull.
;
