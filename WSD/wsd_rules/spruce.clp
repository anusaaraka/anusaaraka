
(defrule spruce0
(declare (salience 5000))
(id-root ?id spruce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA-TanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spruce.clp 	spruce0   "  ?id "  banA-TanA )" crlf))
)

;"spruce","Adj","1.banA-TanA"
;He looks spruce in his new suit.
;
(defrule spruce1
(declare (salience 4900))
(id-root ?id spruce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sprUsa_vqkRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spruce.clp 	spruce1   "  ?id "  sprUsa_vqkRa )" crlf))
)

;"spruce","N","1.sprUsa_vqkRa"
;Spruce trees are mainly found in hilly regions.
;--"2.narama_lakadZI_jo_pepara_banAne_meM_iswemAla_howI_hE"
;These papers are made from spruce trees.
;
(defrule spruce2
(declare (salience 4800))
(id-root ?id spruce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SrqMgAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spruce.clp 	spruce2   "  ?id "  SrqMgAra_kara )" crlf))
)

;"spruce","V","1.SrqMgAra_karanA"
;The students were all spruced up for the annual day.
;
