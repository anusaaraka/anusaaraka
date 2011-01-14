
(defrule fissure0
(declare (salience 5000))
(id-root ?id fissure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fissured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id PatA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fissure.clp  	fissure0   "  ?id "  PatA_huA )" crlf))
)

;"fissured","Adj","1.PatA_huA"
;Cliffs on this mountain are fissured.
;
(defrule fissure1
(declare (salience 4900))
(id-root ?id fissure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fissure.clp 	fissure1   "  ?id "  xarAra )" crlf))
)

;"fissure","N","1.xarAra"
;After earthquake many fissures developed in the ground.
;
;