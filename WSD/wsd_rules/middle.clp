
(defrule middle0
(declare (salience 5000))
(id-root ?id middle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id middling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id maXya_SreNI_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  middle.clp  	middle0   "  ?id "  maXya_SreNI_kA )" crlf))
)

;"middling","Adj","1.maXya SreNI kA"
;Don't always buy middling objects.
;
(defrule middle1
(declare (salience 4900))
(id-root ?id middle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIca_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  middle.clp 	middle1   "  ?id "  bIca_kA )" crlf))
)

;"middle","Adj","1.bIca_[kA]"
;You have to reach some middle point in this case.
;
(defrule middle2
(declare (salience 4800))
(id-root ?id middle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXyasWala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  middle.clp 	middle2   "  ?id "  maXyasWala )" crlf))
)

;"middle","N","1.maXyasWala"
;Don't leave things in the middle of the room.
;
