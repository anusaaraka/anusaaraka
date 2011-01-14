
(defrule man0
(declare (salience 5000))
(id-root ?id man)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  man.clp 	man0   "  ?id "  AxamI )" crlf))
)

;"man","N","1.AxamI"
;--"2.mAnava"
;All men are born free.
;--"3.nara"
;He is a self made man.
;--"4.sEnika"
;All officers && men in the Army are  brave.
;--"5.nOkara"
;My man will drive you home.
;
(defrule man1
(declare (salience 4900))
(id-root ?id man)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxamI_kAma_para_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  man.clp 	man1   "  ?id "  AxamI_kAma_para_ho )" crlf))
)

;"man","V","1.AxamI_kAma_para_honA[lagAnA]"
;The railway crossing at that point was not manned.
;
