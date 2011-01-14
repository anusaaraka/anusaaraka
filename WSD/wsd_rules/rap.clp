
(defrule rap0
(declare (salience 5000))
(id-root ?id rap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rap.clp 	rap0   "  ?id "  mukkA )" crlf))
)

;"rap","N","1.mukkA"
;The raps of the boxer were of great injury to the other boxer. 
;--"2.rEpa_myUjika"
;People nowadays love hearing rap music.
;
(defrule rap1
(declare (salience 4900))
(id-root ?id rap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XOla_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rap.clp 	rap1   "  ?id "  XOla_mAra )" crlf))
)

;"rap","VT","1.XOla_mAranA"
;He got a rap on the back from the teacher for not doing the homework.
;The teacher rapped on the table to get our attention.
;
