
(defrule voice0
(declare (salience 5000))
(id-root ?id voice)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id voiced )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id svara_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  voice.clp  	voice0   "  ?id "  svara_vAlA )" crlf))
)

;"voiced","Adj","1.svara_vAlA"
;He is a soft voiced person
;--"2.saGoRa
;`b' is a voiced sound.
;
(defrule voice1
(declare (salience 4900))
(id-root ?id voice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  voice.clp 	voice1   "  ?id "  AvAja )" crlf))
)

(defrule voice2
(declare (salience 4800))
(id-root ?id voice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra_vyakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  voice.clp 	voice2   "  ?id "  vicAra_vyakwa_kara )" crlf))
)

;"voice","VT","1.vicAra_vyakwa_karanA"
;The protesters voiced their demands
;
;