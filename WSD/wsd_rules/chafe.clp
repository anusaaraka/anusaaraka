
(defrule chafe0
(declare (salience 5000))
(id-root ?id chafe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ragadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chafe.clp 	chafe0   "  ?id "  ragadZa )" crlf))
)

;"chafe","N","1.ragadZa"
;He had a nasty chafe on his knee.
;
;$$$  Modified by Preeti(21-4-14)
;Her wrists chafed where the rope had been. 
;usakI kalAI ragadakara_CIla gayIM, jahAz rassI WI.
(defrule chafe1
(declare (salience 4900))
(id-root ?id chafe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ragadZakara_CIla_jA));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chafe.clp 	chafe1   "  ?id "  ragadZakara_CIla_jA )" crlf))
)

;@@@ Added by Preeti(21-4-14)
;The collar was far too tight and chafed her neck. 
;garaxanI jyAxA hI waMga WI Ora usakI garaxana ko ragadakara_CIla xiyA WA.
(defrule chafe2
(id-root ?id chafe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ragadZakara_CIla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chafe.clp 	chafe2   "  ?id "  ragadZakara_CIla_xe )" crlf))
)

;@@@ Added by Preeti(21-4-14)
;He chafed at the narrow academic approach of his school. [Cambridge Learner’s Dictionary]
;vaha apane vixyAlaya ke safkIrNa SEkRaNika pahuzca para KIja.
(defrule chafe3
(declare (salience 4900))
(id-root ?id chafe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-under_saMbanXI  ?id ?) (kriyA-at_saMbanXI  ?id ?) (kriyA-against_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chafe.clp 	chafe3   "  ?id "  KIja )" crlf))
)

;"chafe","V","1.ragadZa_jAnA"
;This collar chafes the dog's neck.
;
