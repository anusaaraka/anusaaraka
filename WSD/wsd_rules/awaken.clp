
(defrule awaken0
(declare (salience 5000))
(id-root ?id awaken)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id awakening )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jAgqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  awaken.clp  	awaken0   "  ?id "  jAgqwi )" crlf))
)

;"awakening","N","1.jAgqwi"
;The population needed an awakening for the increasing enviromental destruction.
;
(defrule awaken1
(declare (salience 4900))
(id-root ?id awaken)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awaken.clp 	awaken1   "  ?id "  jagA_xe )" crlf))
)




;Added by Meena(10.11.09)
;They were awakened by the sound of a gun.
(defrule awaken2
(declare (salience 4900))
(id-root ?id awaken)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(kriyA-by_saMbanXI ?id ?id22)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awaken.clp    awaken2   "  ?id "  jagA )" crlf))
)




;Added by Meena(9.11.09)
;She awakened to the sound of birds' singing .
(defrule awaken3
(declare (salience 4800))
(id-root ?id awaken)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awaken.clp    awaken3   "  ?id "  jAga )" crlf))
)




;Salience reduced and hindi meaning changed from jAga_jA to jAga by Meena(9.11.09)  
(defrule awaken4
(declare (salience 1000))
;(declare (salience 4800))
(id-root ?id awaken)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awaken.clp 	awaken4   "  ?id "  jAga )" crlf))
)

;"awaken","V","1.jAga_jAnA[jagA_xenA]"
;She was awakened by the loud noise next door.
;padZosa ke Gara se A rahI UzcI AvAjZa se vaha jAga gayI.
;
