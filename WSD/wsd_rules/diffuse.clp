
(defrule diffuse0
(declare (salience 5000))
(id-root ?id diffuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diffuse.clp 	diffuse0   "  ?id "  PElA_huA )" crlf))
)

;"diffuse","Adj","1.PElA_huA"
;Red Cross is a large diffuse organization.
;
(defrule diffuse1
(declare (salience 4900))
(id-root ?id diffuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diffuse.clp 	diffuse1   "  ?id "  PElA )" crlf))
)

;"diffuse","VT","1.PElAnA/CiwarAnA"
;Tension along the border has diffused in the past few months.
;
;LEVEL 
;Headword : diffuse
;
;Examples --
;
;"diffuse","Adj","1.PElA_huA"
;Red Cross is a large diffuse organization.
;redakrOYsa eka badZI PElI huI saMsWA hE.
;
;"diffuse","VT","1.PElAnA"
;Tension along the border has diffused in the past few months.
;piCale kuCa mahInoM meM bOYrdara prAnwa meM wanAva baDZa gayA hE.
;
;
;sUwra : PElAnA`
