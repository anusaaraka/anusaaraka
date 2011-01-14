



;Added by Meena(18.02.10)   %% 
;The native speakers of English do not produce a variable mishmash of words of the sort in 4 . 
(defrule native_speaker_of0
(declare (salience 5000))
(id-root ?id native)
?mng <-(meaning_to_be_decided ?id)
(id-root  =(+ ?id 1) speaker)
(id-root =(+ ?id 2) of)
(id-root ?id1 ?)
(viSeRya-of_saMbanXI =(+ ?id 1) ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng =(+ ?id 1)  =(+ ?id 2) ?id  BARI ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " native.clp  native_speaker_of0  "  (+ ?id 1) "  " (+ ?id 2) "  " ?id "  BARI  )" crlf))
)



;Salience reduced by Meena (18.02.10)
(defrule native1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id native)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  native.clp 	native1   "  ?id "  xeSI )" crlf))
)

;"native","Adj","1.xeSI"
;This area's native tongue is Hindi.
;
(defrule native2
(declare (salience 4900))
(id-root ?id native)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla_nivAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  native.clp 	native2   "  ?id "  mUla_nivAsI )" crlf))
)

;"native","N","1.mUla_nivAsI"
;I am a native of M.P..
;

