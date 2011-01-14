
(defrule outer0
(declare (salience 5000))
(id-root ?id outer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhya-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outer.clp 	outer0   "  ?id "  bAhya- )" crlf))
)

(defrule outer1
(declare (salience 4900))
(id-root ?id outer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outer.clp 	outer1   "  ?id "  bAhya )" crlf))
)

;"outer","Adj","1.bAhya"
;The outer layer of skin is made of cells && follicles.
;--"2.suxUra"
;He stays, the address shows, in outer Mangolia.
;--"3.kenxrAvasArI"
;There is some problem on the outer rim of the front wheel.
;
;

;Added by sheetal(2-01-10).
(defrule outer2
(declare (salience 4950))
(id-root ?id outer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-word =(+ ?id 1) signal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAharI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outer.clp     outer2   "  ?id "  bAharI )" crlf))
)
;The train waited at the outer signal .

