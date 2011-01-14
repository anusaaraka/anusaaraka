
(defrule crouch0
(declare (salience 5000))
(id-root ?id crouch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id crouched )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xubaka_ke_bETA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  crouch.clp  	crouch0   "  ?id "  xubaka_ke_bETA_huA )" crlf))
)

;"crouched","Adj","1.xubaka_ke_bETA_huA"
;His servant sat crouched in a corner. 
;
(defrule crouch1
(declare (salience 4900))
(id-root ?id crouch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crouch.clp 	crouch1   "  ?id "  xabaka )" crlf))
)

;default_sense && category=verb	xubaka_ke_bETa	0
;"crouch","VI","1.xubaka_ke_bETanA"
;He crouched down.  
;
;
