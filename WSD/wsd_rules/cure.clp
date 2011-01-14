
(defrule cure0
(declare (salience 5000))
(id-root ?id cure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikiwsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cure.clp 	cure0   "  ?id "  cikiwsA )" crlf))
)

;"cure","N","1.cikiwsA"
;Her cure took three months
;
(defrule cure1
(declare (salience 4900))
(id-root ?id cure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svasWa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cure.clp 	cure1   "  ?id "  svasWa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  cure.clp      cure1   "  ?id " ko )" crlf)
)
)

;svasWa karanA is better than niroga karanA
;default_sense && category=verb	niroga_kara	0
;"cure","VT","1.niroga_karanA"
;The doctors cured him of Blood pleasure
;
