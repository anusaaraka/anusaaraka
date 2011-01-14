
(defrule remedy0
(declare (salience 5000))
(id-root ?id remedy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upacAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remedy.clp 	remedy0   "  ?id "  upacAra )" crlf))
)

;"remedy","N","1.upacAra"
;Quinine is a good remedy for Malaria.
;--"2.upAya"
;She found a remedy for her grief in constant hard work. 
;
(defrule remedy1
(declare (salience 4900))
(id-root ?id remedy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suXAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remedy.clp 	remedy1   "  ?id "  suXAra )" crlf))
)

;"remedy","VT","1.suXAranA"
;Your spelling mistakes can be remedied by drill work.  
;
