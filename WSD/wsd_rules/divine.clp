
(defrule divine0
(declare (salience 5000))
(id-root ?id divine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ISvarIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divine.clp 	divine0   "  ?id "  ISvarIya )" crlf))
)

;"divine","Adj","1.ISvarIya/svargIya"
;Divine worship
;her pies were simply divine
;--"2.paviwra"
;The custom of killing the divine king upon any serious failure of his...powers
;--"3.SreRTa"
;Divine judgment
;The divine strength of Achilles
;
(defrule divine1
(declare (salience 4900))
(id-root ?id divine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaviRyavANI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divine.clp 	divine1   "  ?id "  BaviRyavANI_kara )" crlf))
)

;"divine","V","1.BaviRyavANI_kara"
