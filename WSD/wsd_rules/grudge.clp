
(defrule grudge0
(declare (salience 5000))
(id-root ?id grudge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grudge.clp 	grudge0   "  ?id "  jalana )" crlf))
)

;"grudge","N","1.jalana/IrRyA"
;I have no grudges on my friend's success in examination.
;
(defrule grudge1
(declare (salience 4900))
(id-root ?id grudge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xene_meM_hicakicA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grudge.clp 	grudge1   "  ?id "  xene_meM_hicakicA )" crlf))
)

;"grudge","V","1.xene_meM_hicakicAnA"
;She grudged in lending her notes to her classmates.
;
