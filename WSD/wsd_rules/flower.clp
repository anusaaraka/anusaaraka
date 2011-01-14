
(defrule flower0
(declare (salience 5000))
(id-root ?id flower)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flowering )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id baDZanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flower.clp  	flower0   "  ?id "  baDZanA )" crlf))
)

;"flowering","Adj","1.baDZanA"
;The deterioration in law && order in this area has been flowering since the new corporater has been installed.
(defrule flower1
(declare (salience 4900))
(id-root ?id flower)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flowered )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id puRpiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flower.clp  	flower1   "  ?id "  puRpiwa )" crlf))
)

;"flowered","Adj","1.puRpiwa"
;This wall paper has a flowered pattern.
;
;
(defrule flower2
(declare (salience 4800))
(id-root ?id flower)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flower.clp 	flower2   "  ?id "  PUla )" crlf))
)

;"flower","N","1.PUla"
;The flowers of this plant are very beautiful.
;--"2.SreRTa_BAga"
;The most meritorious students are considered as the flower of the nation.
;
(defrule flower3
(declare (salience 4700))
(id-root ?id flower)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUloM_kA_Kila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flower.clp 	flower3   "  ?id "  PUloM_kA_Kila )" crlf))
)

;"flower","V","1.PUloM_kA_KilanA"
;Roses flower throughout the year.
;--"2.baDZanA"
;Their dependence on each other flowered with time.
;
