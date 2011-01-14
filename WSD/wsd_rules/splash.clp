
(defrule splash0
(declare (salience 5000))
(id-root ?id splash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Capa-Capa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  splash.clp 	splash0   "  ?id "  Capa-Capa )" crlf))
)

;"splash","N","1.Capa-Capa"
;The boys played in the rain with sounds of splash.
;--"2.CidZakAva"
;The splash of water on crops gave them a new life.
;
(defrule splash1
(declare (salience 4900))
(id-root ?id splash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CIMte_dZAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  splash.clp 	splash1   "  ?id "  CIMte_dZAla )" crlf))
)

;"splash","V","1.CIMte_dZAlanA"
;The Children splashed water on each other.
;--"2.takarAkara_CIwarAnA"
;The juice in the glass splashed on the floor.
;
