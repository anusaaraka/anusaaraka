
(defrule stunt0
(declare (salience 5000))
(id-root ?id stunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bala_praxarSana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stunt.clp 	stunt0   "  ?id "  bala_praxarSana )" crlf))
)

;"stunt","N","1.bala_praxarSana"
;This movie has many stunts.
;
(defrule stunt1
(declare (salience 4900))
(id-root ?id stunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZane_na_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stunt.clp 	stunt1   "  ?id "  baDZane_na_xe )" crlf))
)

;"stunt","V","1.baDZane_na_xenA"
;Inadiquate food can stunt a child's developement.
;
