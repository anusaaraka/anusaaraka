
(defrule small0
(declare (salience 5000))
(id-root ?id small)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  small.clp 	small0   "  ?id "  CotA )" crlf))
)
;modified CotA- CotA by manju

(defrule small1
(declare (salience 4900))
(id-root ?id small)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  small.clp 	small1   "  ?id "  CotA )" crlf))
)

(defrule small2
(declare (salience 4800))
(id-root ?id small)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  small.clp 	small2   "  ?id "  CotA )" crlf))
)

;"small","Adj","1.CotA"
;The hat is too small for me.
;--"2.nagaNya"   
;He is a small man in eyes of his boss.
;
;
