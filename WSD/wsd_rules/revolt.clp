
(defrule revolt0
(declare (salience 5000))
(id-root ?id revolt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bagZAvawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revolt.clp 	revolt0   "  ?id "  bagZAvawa )" crlf))
)

;"revolt","N","1.bagZAvawa"
;The army crushed the revolt of rebellions.
;The people rose in revolt.
;
(defrule revolt1
(declare (salience 4900))
(id-root ?id revolt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjaxrohI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revolt.clp 	revolt1   "  ?id "  rAjaxrohI_ho )" crlf))
)

;"revolt","VTI","1.rAjaxrohI_honA"
;The Romans revolted against the Caesar.
;--"2.GqNA_uwpanna_karanA[honA]"
;The gory sight of the accident revolted her.
;
