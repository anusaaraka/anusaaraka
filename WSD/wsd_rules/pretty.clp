

;Added by Meena(28.4.11)
;The debate was a pretty disappointing affair. 
(defrule pretty0
(declare (salience 5000))
(id-root ?id pretty)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ?wrd)
(viSeRaNa-viSeRaka  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pretty.clp    pretty0   "  ?id "  bahuwa   )" crlf))
)





(defrule pretty1
(declare (salience 5000))
(id-root ?id pretty)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 empty)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pretty.clp 	pretty1   "  ?id "  kAPI )" crlf))
)

(defrule pretty2
(declare (salience 4900))
(id-root ?id pretty)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manorama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pretty.clp 	pretty2   "  ?id "  manorama )" crlf))
)

(defrule pretty3
(declare (salience 4800))
(id-root ?id pretty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pretty.clp 	pretty3   "  ?id "  kAPZI )" crlf))
)

(defrule pretty4
(declare (salience 4700))
(id-root ?id pretty)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manohara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pretty.clp 	pretty4   "  ?id "  manohara )" crlf))
)

;"pretty","Adj","1.manohara"
;Tanya was looking so pretty at the party. 
;
;
