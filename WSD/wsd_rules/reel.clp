
(defrule reel0
(declare (salience 5000))
(id-root ?id reel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_viSeRa_prakAra_kA_nqwya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reel.clp 	reel0   "  ?id "  eka_viSeRa_prakAra_kA_nqwya )" crlf))
)

;"reel","N","1.eka_viSeRa_prakAra_kA_nqwya"
;There is a provision provided in our college to learn the famous reel dance.
;--"1.GiranI"
;Shopkeepers wrap the electrical wires on reels.
;--"2.sinemA_rIla"
;That film was of 1.reels.
;
(defrule reel1
(declare (salience 4900))
(id-root ?id reel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakkara_KAnA_hila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reel.clp 	reel1   "  ?id "  cakkara_KAnA_hila_jA )" crlf))
)

;"reel","VT","1.cakkara_KAnA_hila_jAnA"
;The boxer reeled && fell. 
;--"2.GUmanA"
;Everything began to reel before her eyes.  
;
