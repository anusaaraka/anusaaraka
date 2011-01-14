;Added by Meena(1.4.10)
;When I run at my full speed . 
(defrule full00
(declare (salience 5000))
(id-root ?id full)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  full.clp      full00   "  ?id "  pUrA )" crlf))
)



(defrule full0
(declare (salience 5000))
(id-root ?id full)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 - )
(viSeRya-of_viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  full.clp 	full0   "  ?id "  BarA_huA )" crlf))
)

(defrule full1
(declare (salience 4900))
(id-root ?id full)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  full.clp 	full1   "  ?id "  BarA_huA )" crlf))
)

(defrule full2
(declare (salience 4800))
(id-root ?id full)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  full.clp 	full2   "  ?id "  pUrA- )" crlf))
)

(defrule full3
(declare (salience 4700))
(id-root ?id full)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  full.clp 	full3   "  ?id "  BarA_huA )" crlf))
)

;"full","Adj","1.BarA_huA"
;The lake is full during rainy season.
;--"2.pUrNa"
;She is full of energy.
;--"3.Barapeta"
;I'm full.I cannot eat any more.
;--"4.pUrA"
;The woman gave full information of the incident.
;
;
