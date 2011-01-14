
(defrule blend0
(declare (salience 5000))
(id-root ?id blend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miSraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blend.clp 	blend0   "  ?id "  miSraNa )" crlf))
)

;"blend","N","1.miSraNa/mela"
(defrule blend1
(declare (salience 4900))
(id-root ?id blend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blend.clp 	blend1   "  ?id "  mila )" crlf))
)

;"blend","VI","1.milanA"
;This flavor will blend with those in your dish
;The colors blend well
;
(defrule blend2
(declare (salience 4800))
(id-root ?id blend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blend.clp 	blend2   "  ?id "  milA )" crlf))
)

;"blend","VT","1.milAnA/miSraNa_karanA"
;Blend the nuts && raising together
;
