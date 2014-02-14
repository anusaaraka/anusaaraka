
(defrule remain0
(declare (salience 5000))
(id-root ?id remain)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 speed)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bane_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain0   "  ?id "  bane_raha )" crlf))
)

(defrule remain1
(declare (salience 4900))
(id-root ?id remain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
;(id-root ?sub  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str))) ;Added by Manju Suggested by Chaitanya Sir (17-08-13) ... the problem remains. ... samasyA SeRa rahawI hE
(id-root ?id1 ?sub);As suggested by Chaitanya Sir removed inanimate.gdbm and modified the fact as shown by Roja (03-12-13) 
(test (and (neq (numberp ?sub) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?sub) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SeRa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain1   "  ?id "  SeRa_raha )" crlf))
)

(defrule remain2
(declare (salience 4800))
(id-root ?id remain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain2   "  ?id "  raha )" crlf))
)

;"remain","V","1.[SeRa]_raha"
;default_sense && category=verb	[SeRa]_raha	0
;"remain","VI","1.SeRa_rahanA"
;If you take 5 from 9,4 remains.
;After the fire,very little remained of the building.
;Much still remains to be done.
;--"2.bane_rahanA"
;Remain standing until I ask you.      
;I shall remain with you for a week.
;
