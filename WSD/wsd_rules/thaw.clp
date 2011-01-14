
(defrule thaw0
(declare (salience 5000))
(id-root ?id thaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thaw.clp 	thaw0   "  ?id "  galana )" crlf))
)

;"thaw","N","1.galana"
;The sudden thaw resulted in flooding.
;
(defrule thaw1
(declare (salience 4900))
(id-root ?id thaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thaw.clp 	thaw1   "  ?id "  gala )" crlf))
)

;"thaw","VTI","1.galanA"
;The ice which was removed from the freezer began to thaw.
;--"2.DIlA_padanA[vyavahAra]"
;A gradual thaw in relations with the enemy nation in the recent summit was a step forward.
;
