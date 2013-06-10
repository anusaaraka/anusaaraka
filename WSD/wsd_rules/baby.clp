;Modified (SiSU  as SiSu) by Shirisha Manju (Suggested by Sukhada 07-06-13)
(defrule baby0
(declare (salience 5000))
(id-root ?id baby)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiSu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  baby.clp 	baby0   "  ?id "  SiSu )" crlf))
)

(defrule baby1
(declare (salience 4900))
(id-root ?id baby)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAWa_bacce_jEsA_vyavahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  baby.clp 	baby1   "  ?id "  ke_sAWa_bacce_jEsA_vyavahAra_kara )" crlf))
)

;"baby","VT","1.ke_sAWa_bacce_jEsA_vyavahAra_karanA"
;Even though Rakesh is now six year old his parents still baby him.
;
;
