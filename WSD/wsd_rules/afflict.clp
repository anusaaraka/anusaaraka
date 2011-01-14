
(defrule afflict0
(declare (salience 5000))
(id-root ?id afflict)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id afflicted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMwapwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  afflict.clp  	afflict0   "  ?id "  saMwapwa )" crlf))
)

;"afflicted","Adj","1.saMwapwa"
;The aid has been sent to the afflicted people.
;
(defrule afflict1
(declare (salience 4900))
(id-root ?id afflict)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wraswa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afflict.clp 	afflict1   "  ?id "  wraswa_ho )" crlf))
)

(defrule afflict2
(declare (salience 4800))
(id-root ?id afflict)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wraswa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afflict.clp 	afflict2   "  ?id "  wraswa_kara )" crlf))
)

;"afflict","V","1.wraswa_honA[karanA]"
;The state has been severly afflicted with floods.
;
