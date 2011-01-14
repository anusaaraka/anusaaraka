
(defrule spectacular0
(declare (salience 5000))
(id-root ?id spectacular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spectacular.clp 	spectacular0   "  ?id "  SAnaxAra )" crlf))
)

(defrule spectacular1
(declare (salience 4900))
(id-root ?id spectacular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spectacular.clp 	spectacular1   "  ?id "  SAnaxAra )" crlf))
)

;default_sense && category=adjective	acCI_praxarSana	0
; cahnged to SAnaxAra : Amba
;"spectacular","Adj","1.acCI praxarSana/SAnaxAra"
;There was a spectacular seen of the mountain.
;
;
