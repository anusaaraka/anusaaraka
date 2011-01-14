
(defrule plume0
(declare (salience 5000))
(id-root ?id plume)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id plumed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id para_se_ABURiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plume.clp  	plume0   "  ?id "  para_se_ABURiwa )" crlf))
)

;"plumed","Adj","1.para se ABURiwa"
;Varieties of plumed hats are for sale in the hat show.
;
(defrule plume1
(declare (salience 4900))
(id-root ?id plume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plume.clp 	plume1   "  ?id "  para )" crlf))
)

;"plume","N","1.para"
;The plumes of peacock feathers are very precious to children.
;--"2.para se banAyA huA ABaraNa"
;It'a plume of pigion feathers.
;
;