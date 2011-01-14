
(defrule knife0
(declare (salience 5000))
(id-root ?id knife)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAkU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knife.clp 	knife0   "  ?id "  cAkU )" crlf))
)

;"knife","N","1.cAkU"
;The knife is very sharp.
;
(defrule knife1
(declare (salience 4900))
(id-root ?id knife)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAkU_se_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knife.clp 	knife1   "  ?id "  cAkU_se_mAra )" crlf))
)

;"knife","V","1.cAkU_se_mAranA"
;Dacoits knifed him yesterday night.
;
