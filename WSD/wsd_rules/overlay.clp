
(defrule overlay0
(declare (salience 5000))
(id-root ?id overlay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparI_waha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overlay.clp 	overlay0   "  ?id "  UparI_waha )" crlf))
)

;"overlay","N","1.UparI_waha"
;The goldsmith gave an overlay of gold over the silver vessel.
;

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Her new novel is overlaid with political concerns. [Cambridge]
;उसका नया उपन्यास राजनैतिक चिंताओं के साथ भरा हुआ है . 
(defrule overlay1
(declare (salience 4900))
(id-root ?id overlay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 book|novel|newspaper|notebook|paper|memory|feeling)
(or(kriyA-subject  ?id ?id1)(kriyA-with_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overlay.clp 	overlay1   "  ?id "  BarA_huA )" crlf))
)



;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Wood overlaid with gold. [OALD]
;लकडी सोने के साथ परत चढा हुआ . 
(defrule overlay2
(declare (salience 4800))
(id-root ?id overlay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?)
(kriyA-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parawa_caDA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overlay.clp 	overlay2   "  ?id "  parawa_caDA_huA )" crlf))
)


(defrule overlay3
(declare (salience 4700))
(id-root ?id overlay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_ke_Upara_eka_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overlay.clp 	overlay3   "  ?id "  eka_ke_Upara_eka_raKa )" crlf))
)

;"overlay","VT","1.eka_ke_Upara_eka_raKanA"
;This is a wooden door overlaid with ivory
;
