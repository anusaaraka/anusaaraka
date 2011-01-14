
(defrule curve0
(declare (salience 5000))
(id-root ?id curve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vakra_reKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curve.clp 	curve0   "  ?id "  vakra_reKA )" crlf))
)

;"curve","N","1.vakra_reKA"
;There is a curve in the road
;
(defrule curve1
(declare (salience 4900))
(id-root ?id curve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vakra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curve.clp 	curve1   "  ?id "  vakra_ho )" crlf))
)

;"curve","VTI","1.vakra_honA"
;The road curved suddenly to the right
;
;LEVEL 
;
;
;'curve' Sabxa kA sUwra banAne kA prayAsa :- 
;
;"curve"
;
;"teDZA-meDZA"  
;The roads in the hilly areas are curved.  
;parvawIya ilAko meM sadZake teDZI-meDZI hEM.       <--mudZI_huI <--modZavAlI
;
;"modZa"
;The iron rod has many curves.
;lohe kI CadZa meM kaI modZa hEM
;
;"mudZanA"
;The path curved suddenly.
;pagadaNdI acAnaka mudZa gayI.
;
;ina uxAharaNo ko XyAna se xeKA jAya we ina saba meM eka AMwarika saMbaMxa hEM.yahAz "curve"   kA mUla arWa 'modZa' nikalawA hEM.jo kuCa isa prakAra nikalawA hEM.     
;
;sUwra : modZa`
;
;
