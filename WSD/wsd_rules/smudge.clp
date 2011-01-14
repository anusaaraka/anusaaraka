
(defrule smudge0
(declare (salience 5000))
(id-root ?id smudge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XabbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smudge.clp 	smudge0   "  ?id "  XabbA )" crlf))
)

;"smudge","N","1.XabbA"
;He entered with a smudge on his face.
;
(defrule smudge1
(declare (salience 4900))
(id-root ?id smudge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XabbA_dZAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smudge.clp 	smudge1   "  ?id "  XabbA_dZAla )" crlf))
)

;"smudge","V","1.XabbA_dZAlanA"
;You smudged your new t-shirt.
;--"2.ragadZane_para_CUtane_vAlA"
;You have got a smudge of dust on your cheek.
;
