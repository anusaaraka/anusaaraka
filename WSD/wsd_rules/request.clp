
(defrule request0
(declare (salience 5000))
(id-root ?id request)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  request.clp 	request0   "  ?id "  anuroXa )" crlf))
)

(defrule request1
(declare (salience 4900))
(id-root ?id request)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuroXa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  request.clp 	request1   "  ?id "  anuroXa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  request.clp   request1   "  ?id " ko )" crlf)
)
)

;"request","VT","1.anuroXa_karanA"
;May I request you to stay here for a few days more. 
;You are requested to grant me leave for three days.
;
;
