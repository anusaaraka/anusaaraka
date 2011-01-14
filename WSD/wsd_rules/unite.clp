
(defrule unite0
(declare (salience 5000))
(id-root ?id unite)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id united )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMyukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  unite.clp  	unite0   "  ?id "  saMyukwa )" crlf))
)

;"united","Adj","1.saMyukwa/milA_huA/eka_kiyA_huA/eka"
;During elections all the regional political parties formed a united front.
;
(defrule unite1
(declare (salience 4900))
(id-root ?id unite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unite.clp 	unite1   "  ?id "  saMyukwa )" crlf))
)

(defrule unite2
(declare (salience 4800))
(id-root ?id unite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unite.clp 	unite2   "  ?id "  saMyukwa_kara )" crlf))
)

;"unite","VTI","1.saMyukwa_karanA"
;She unites charm with a good business sense.
;
;