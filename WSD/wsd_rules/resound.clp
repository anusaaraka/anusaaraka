
(defrule resound0
(declare (salience 5000))
(id-root ?id resound)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id resounding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prawiXvaniwa_karane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  resound.clp  	resound0   "  ?id "  prawiXvaniwa_karane_vAlA )" crlf))
)

;"resounding","Adj","1.prawiXvaniwa_karane_vAlA"
;There is a resounding cheers at his success.
;
(defrule resound1
(declare (salience 4900))
(id-root ?id resound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiXvaniwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resound.clp 	resound1   "  ?id "  prawiXvaniwa_ho )" crlf))
)

;"resound","VTI","1.prawiXvaniwa_honA"
;The Parliament house resounded with the cries of opposition members.
;--"2.XUma_macAnA"  
;The film was a resounding success.
;
;