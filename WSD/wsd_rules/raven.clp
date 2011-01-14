
(defrule raven0
(declare (salience 5000))
(id-root ?id raven)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ravening )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kRuXAwura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  raven.clp  	raven0   "  ?id "  kRuXAwura )" crlf))
)

;"ravening","Adj","1.kRuXAwura"
;A ravening panther was found roaming here && there. 
;
(defrule raven1
(declare (salience 4900))
(id-root ?id raven)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id syAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raven.clp 	raven1   "  ?id "  syAha )" crlf))
)

;"raven","Adj","1.syAha"
;Raven locks of a lady attracts everyone.
;
(defrule raven2
(declare (salience 4800))
(id-root ?id raven)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_prakAra_kA_kOvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raven.clp 	raven2   "  ?id "  eka_prakAra_kA_kOvA )" crlf))
)

;"raven","N","1.eka_prakAra_kA_kOvA"
;We rarely see ravens near our house.
;
(defrule raven3
(declare (salience 4700))
(id-root ?id raven)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracaNdawA_se_SikAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raven.clp 	raven3   "  ?id "  pracaNdawA_se_SikAra_kara )" crlf))
)

;"raven","VTI","1.pracaNdawA_se_SikAra_karanA"
;The tiger ravened the deer.
;
