
(defrule rail0
(declare (salience 5000))
(id-root ?id rail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id railing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kaTaGarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rail.clp  	rail0   "  ?id "  kaTaGarA )" crlf))
)

;"railing","N","1.kaTaGarA"
;M.C.H. has put the beautiful park railings for the safety of the children.
;
(defrule rail1
(declare (salience 4900))
(id-root ?id rail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rail.clp 	rail1   "  ?id "  rela )" crlf))
)

;"rail","N","1.rela"
;--"2.trena"
;Send your son by rail.
;What is the rail fare to Bombay.
;--"3.patarI"
;Hold on to the rail at the edge of the water fall.
;She has a beautiful curtain rail.  
;
(defrule rail2
(declare (salience 4800))
(id-root ?id rail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rela_para_saPZara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rail.clp 	rail2   "  ?id "  rela_para_saPZara_kara )" crlf))
)

;"rail","VTI","1.rela_para_saPZara_karanA"
