
(defrule feud0
(declare (salience 5000))
(id-root ?id feud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feud.clp 	feud0   "  ?id "  kalaha )" crlf))
)

;"feud","N","1.kalaha{laMbe_samaya_se_calanevAlI}"
;The feud in their family has been going on for a long time.
;
(defrule feud1
(declare (salience 4900))
(id-root ?id feud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAMGAwika_viroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feud.clp 	feud1   "  ?id "  sAMGAwika_viroXa )" crlf))
)

;"feud","V","1.sAMGAwika_viroXa"
;Neighbouring landlords are always feuding over property.
;
