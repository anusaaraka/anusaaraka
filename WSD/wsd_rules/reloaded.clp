(defrule reload1
(declare (salience 4900))
(id-word ?id reloaded)
;(id-root ?id reload)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root =(+ ?id 2) document|data|programme|file)
(kriyA-object ?id  =(+ ?id 2))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Pira_se_raKA))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reloaded.clp      reload1   "  ?id "   Pira_se_raKA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi  " ?*wsd_dir* "  reloaded.clp      reload1   "  ?id " ko )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi  " ?*wsd_dir* "  reloaded.clp      reload1   "  ?id " ne )" crlf))
)


