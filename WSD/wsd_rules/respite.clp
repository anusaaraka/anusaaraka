
(defrule respite0
(declare (salience 5000))
(id-root ?id respite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id virAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  respite.clp 	respite0   "  ?id "  virAma )" crlf))
)

;"respite","N","1.virAma/ArAma"
;She toiled whole day without respite. 
;
(defrule respite1
(declare (salience 4900))
(id-root ?id respite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vilamba_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  respite.clp 	respite1   "  ?id "  vilamba_kara )" crlf))
)

;"respite","VT","1.vilamba_karanA"
;His hanging was respited.
;
