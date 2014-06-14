;@@@ Added by jagriti(13.3.2014)
;There is not a shred of doubt in it.[rajapl]
;इसमें लेशमात्र सन्देह नहीं है 
(defrule shred2
(declare (salience 5000))
(id-root ?id shred)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 doubt|evidence)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leSamAwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shred.clp 	shred2   "  ?id "  leSamAwra )" crlf))
)
;@@@ Added by jagriti(13.3.2014)
;To shred an argument.[rajpal]
;बहस की धज्जियां उडाना .
(defrule shred3
(declare (salience 4900))
(id-root ?id shred)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 argument)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XajjiyAM_udZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shred.clp 	shred3   "  ?id "  XajjiyAM_udZA )" crlf))
)
;....Default Rule....
(defrule shred0
(declare (salience 100))
(id-root ?id shred)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA_tukadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shred.clp 	shred0   "  ?id "  CotA_tukadZA )" crlf))
)

;"shred","N","1.CotA_tukadZA"
;He tore the paper into shreds.
;--"2.leSamAwra"
;There is not a shred of evidence to support what he says.
;
(defrule shred1
(declare (salience 100))
(id-root ?id shred)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cote_tukadZoM_meM_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shred.clp 	shred1   "  ?id "  Cote_tukadZoM_meM_kAta )" crlf))
)

;"shred","V","1.Cote_tukadZoM_meM_kAtanA"
;The servant has to shred the cabbage.
;
