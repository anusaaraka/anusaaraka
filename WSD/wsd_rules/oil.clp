
(defrule oil0
(declare (salience 5000))
(id-root ?id oil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oil.clp 	oil0   "  ?id "  wela )" crlf))
)

(defrule oil1
(declare (salience 4900))
(id-root ?id oil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wela_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oil.clp 	oil1   "  ?id "  wela_lagA )" crlf))
)

;"oil","VT","1.wela lagAnA"
;Oil the wooden surface.
;
;