
(defrule ply0
(declare (salience 5000))
(id-root ?id ply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id motAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ply.clp 	ply0   "  ?id "  motAI )" crlf))
)

;"ply","N","1.motAI{kapade_yA_lakadI_kI}"
;We bought a four ply knitting wool.
;
(defrule ply1
(declare (salience 4900))
(id-root ?id ply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AnA-jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ply.clp 	ply1   "  ?id "  AnA-jA )" crlf))
)

;"ply","V","1.AnA-jAnA"
;Private buses ply between our village && the town nearby.
;
