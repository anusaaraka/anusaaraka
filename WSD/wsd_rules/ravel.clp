
(defrule ravel0
(declare (salience 5000))
(id-root ?id ravel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KolanA_KulajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ravel.clp 	ravel0   "  ?id "  KolanA_KulajA )" crlf))
)

;"ravel","VI","1.KolanA_KulajAnA"
;The rug has started to ravel at the edges.
;
(defrule ravel1
(declare (salience 4900))
(id-root ?id ravel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sulaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ravel.clp 	ravel1   "  ?id "  sulaJA )" crlf))
)

;"ravel","VT","1.sulaJAnA"
;The mystery needs to be raveled out.
;
