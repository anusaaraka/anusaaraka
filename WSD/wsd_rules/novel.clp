
(defrule novel0
(declare (salience 5000))
(id-root ?id novel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id navIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  novel.clp 	novel0   "  ?id "  navIna )" crlf))
)

;"novel","Adj","1.navIna"
;The computer produced a completely novel proof of a well-known theorem.
;
(defrule novel1
(declare (salience 4900))
(id-root ?id novel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upanyAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  novel.clp 	novel1   "  ?id "  upanyAsa )" crlf))
)

;"novel","N","1.upanyAsa"
;Aparna is a voracious reader of novels.
;
