
(defrule bind0
(declare (salience 5000))
(id-root ?id bind)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id binding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AvaSyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bind.clp  	bind0   "  ?id "  AvaSyaka )" crlf))
)

;"binding","Adj","1.AvaSyaka"
;A binding contract
;--"2.baMXanavAlA"
;Tight garments are uncomfortably binding
;
(defrule bind1
(declare (salience 4900))
(id-root ?id bind)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id binding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jilxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bind.clp  	bind1   "  ?id "  jilxa )" crlf))
)

;"binding","N","1.jilxa"
;The book had a leather binding
;
(defrule bind2
(declare (salience 4800))
(id-root ?id bind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bind.clp 	bind2   "  ?id "  bAzXa )" crlf))
)

;"bind","VT","1.bAzXa"
;The Chinese would bind the feet of their women
;
;
