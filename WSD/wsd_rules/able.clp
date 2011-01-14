
(defrule able0
(declare (salience 5000))
(id-root ?id able)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  able.clp 	able0   "  ?id "  samarWa )" crlf))
)

(defrule able1
(declare (salience 4900))
(id-root ?id able)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  able.clp 	able1   "  ?id "  samarWa )" crlf))
)

;"able","Adj","1.samarWa"
;Ram was able to lift the suitcase.
;--"2.cawura"
;Ram is the most able student in his class.
;
;
;SabdasUtra explanation starts here 
;LEVEL 
;Headword : able
;
;
;Examples --
;
;"able","Adj","1.samarWa/yogya"
;Ram was most able person to lift the suitcase.
;sUtakesa uTAne ke liye rAma sabase yogya vyakwi WA.
;
;--"2.cawura"
;Ram is the most able student in his class.
;apanI kakRA meM rAma sabase yogya vixyArWI WA.
;          
;        sUwra : yogya[cawura] 
;
;
;SabdasUtra explanation ends here
