;Commented this rule by Roja(27-12-13). Suggested by Sukhada. File never loads with prefix. 
;(defrule inter0
;(declare (salience 5000))
;(id-root ?id inter)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id Pref)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id anwar-))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inter.clp 	inter0   "  ?id "  anwar- )" crlf))
;)

;"inter","Pref","1.anwar-"
(defrule inter1
(declare (salience 4900))
(id-root ?id inter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inter.clp 	inter1   "  ?id "  gAdZa )" crlf))
)

;"inter","V","1.gAdZanA{lASa}"
(defrule inter2
(declare (salience 4800))
(id-root ?id inter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inter.clp 	inter2   "  ?id "  gAdZa )" crlf))
)

;"inter","VT","1.gAdZanA{lASa}"
;They intered the body in the cemetery.
;
