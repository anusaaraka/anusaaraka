
(defrule thump0
(declare (salience 5000))
(id-root ?id thump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XamAkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thump.clp 	thump0   "  ?id "  XamAkA )" crlf))
)

;"thump","N","1.XamAkA"
;He drew the attention of the people by a thump on the table.
;--"2.mukkA"
;Manoj gave Hari a thump.
;
(defrule thump1
(declare (salience 4900))
(id-root ?id thump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Toka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thump.clp 	thump1   "  ?id "  Toka )" crlf))
)

;"thump","VTI","1.TokanA"
;The minister thumped  the table during the assembly proceedings.
;--"2.WapaWapAnA"
;She could hear somebody thumping at the door.
;--"3.XadZakanA"
;When she saw the shadow in the dark her heart thumped loudly.
;
