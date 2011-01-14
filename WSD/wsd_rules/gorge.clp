
(defrule gorge0
(declare (salience 5000))
(id-root ?id gorge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMga_GAtI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gorge.clp 	gorge0   "  ?id "  waMga_GAtI )" crlf))
)

;"gorge","N","1.waMga_GAtI"
;The car fell into a deep gorge.
;
(defrule gorge1
(declare (salience 4900))
(id-root ?id gorge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA-pUrA_Bara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gorge.clp 	gorge1   "  ?id "  pUrA-pUrA_Bara_xe )" crlf))
)

;"gorge","V","1.pUrA-pUrA_Bara_xenA"
;She gorged herself on icecreams.
;
