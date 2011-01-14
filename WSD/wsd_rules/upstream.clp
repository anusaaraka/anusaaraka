
(defrule upstream0
(declare (salience 5000))
(id-root ?id upstream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XArA-prawikUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upstream.clp 	upstream0   "  ?id "  XArA-prawikUla )" crlf))
)

;"upstream","Adj","1.XArA-prawikUla"
;He swam upstream.
;
(defrule upstream1
(declare (salience 4900))
(id-root ?id upstream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ujAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upstream.clp 	upstream1   "  ?id "  ujAna )" crlf))
)

;"upstream","Adv","1.ujAna"
;Factories upstream are polluting the rivers.
;
