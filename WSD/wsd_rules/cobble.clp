
(defrule cobble0
(declare (salience 5000))
(id-root ?id cobble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cote_pawWara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cobble.clp 	cobble0   "  ?id "  Cote_pawWara )" crlf))
)

;"cobble","N","1.Cote_pawWara"
;The vehicles clattered over the cobbles.
;
(defrule cobble1
(declare (salience 4900))
(id-root ?id cobble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cote_pawWara_biCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cobble.clp 	cobble1   "  ?id "  Cote_pawWara_biCA )" crlf))
)

;"cobble","V","1.Cote_pawWara_biCAnA"
;The streets were cobbled for construction of roads.
;--"2.marammawa_karanA"
;The cobbler cobbled my old shoes.
;
