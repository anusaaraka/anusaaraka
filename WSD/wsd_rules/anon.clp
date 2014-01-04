
(defrule anon0
(declare (salience 5000))
(id-root ?id anon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id Abbr)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajFAwa_leKaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anon.clp 	anon0   "  ?id "  ajFAwa_leKaka )" crlf))
)

;"anon","Abbr:anonymous","1.ajFAwa_leKaka"
;The writer of this poem is anon.
;

;I will answer his letter anon. [M-W] (Example suggested by Sukhada (27-12-13))
;tomorrow will be here anon [M-W] (Example suggested by Chaitanya Sir 30-12-13)
;Meaning should be jalxi_hI (suggested by Chaitanya Sir 30-12-13)
;"anon","Adv","1.jalxI"

(defrule anon1
(declare (salience 4900))
(id-root ?id anon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anon.clp 	anon1   "  ?id "  jalxI )" crlf))
)

;Help from M-W (Added by Roja)
;Full Definition of ANON
;-- wawkAla
;1 archaic :  at once :  immediately
;-- jalxI_hI
;2 soon, presently <tomorrow will be here anon — Nathaniel Hawthorne>
;-- kuCa_xera_bAxa
;3 after a while :  later <more of that anon> 
