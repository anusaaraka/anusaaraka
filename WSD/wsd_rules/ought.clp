
; changed from (id-cat_crude ?id MV) to (id-cat_coarse ?id modal)by Meena.    

(defrule ought0
(declare (salience 5000))
(id-root ?id ought)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id modal)           
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAhiye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ought.clp 	ought0   "  ?id "  cAhiye )" crlf)))

;"ought","MV","1.cAhiye"
;You ought to apologize to me.
;

