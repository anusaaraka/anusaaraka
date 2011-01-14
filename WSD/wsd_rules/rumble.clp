
(defrule rumble0
(declare (salience 5000))
(id-root ?id rumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GadZaGadZAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rumble.clp 	rumble0   "  ?id "  GadZaGadZAhata )" crlf))
)

;"rumble","N","1.GadZaGadZAhata"
;There was a rumbling sound of gunfire at night.
;There was a continous rumbling sound of volcano which has errupted recently.
;
(defrule rumble1
(declare (salience 4900))
(id-root ?id rumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GadZaGadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rumble.clp 	rumble1   "  ?id "  GadZaGadZA )" crlf))
)

;"rumble","VI","1.GadZaGadZAnA"
;I was so hungry that my stomach was rumbling.
;Discussions rumble on over the making of new policies.
;
