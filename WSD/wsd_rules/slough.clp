
(defrule slough0
(declare (salience 5000))
(id-root ?id slough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xalaxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slough.clp 	slough0   "  ?id "  xalaxala )" crlf))
)

;"slough","N","1.xalaxala"
;In the forests, of satpura slough of mud can be seen easily.
;
(defrule slough1
(declare (salience 4900))
(id-root ?id slough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slough.clp 	slough1   "  ?id "  uwAra )" crlf))
)

;"slough","V","1.uwAranA/uwaranA/uwAra_PeMkanA"
;The company is trying to slough off its negative public image.
;The snake is sloughing off its skin.
;
