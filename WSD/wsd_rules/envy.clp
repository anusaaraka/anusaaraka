
(defrule envy0
(declare (salience 5000))
(id-root ?id envy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id IrRyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  envy.clp 	envy0   "  ?id "  IrRyA )" crlf))
)

;"envy","N","1.IrRyA"
;He couldn't conceal his envy at my success .
;His healthy && strong body is the envy of his friends.
;
(defrule envy1
(declare (salience 4900))
(id-root ?id envy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id IrRyA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  envy.clp 	envy1   "  ?id "  IrRyA_kara )" crlf))
)

;"envy","VT","1.IrRyA_karanA"
;We shouldn't envy other's success .
;I realy envy your loving && happy family.
;
