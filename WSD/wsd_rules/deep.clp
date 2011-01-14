
(defrule deep0
(declare (salience 5000))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep0   "  ?id "  gaharA )" crlf))
)

;"deep","Adj","1.gaharA"
;She took out water from a deep well.
;He took a deep breath on seeing his sick friend.
;He wore a deep blue jacket for the party.
;He has got a deep insight into the subject .
;--"2.gamBIra"
;His sentences had deep meanings.
;He had a deep voice.
;--"3.magna"
;His involvement in the affair was very deep.
;He was deep in thoughts.
;
(defrule deep1
(declare (salience 4900))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharAI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep1   "  ?id "  gaharAI_se )" crlf))
)

;"deep","Adv","1.gaharAI_se[meM]"
;He was deep asleep when Ram came inside the house .
;He went deep inside the river.
;The prayer was performed by standing deep in the river.
;
(defrule deep2
(declare (salience 4800))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samuxra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep2   "  ?id "  samuxra )" crlf))
)

;"deep","N","1.samuxra"
;Pacific is the deep.
;
;LEVEL 
;Headword : deep
;
;Examples --
;
;"deep","Adj","1.gaharA"
;She took out water from a deep well.
;usane eka gahare kuze se pAnI nikAlA.
;He took a deep breath on seeing his sick friend.
;usane apane bImAra miwra ko xeKakara eka gaharI sAzsa lI.
;He wore a deep blue jacket for the party.
;usane pArtI ke liye eka gaharI nIlI jEketa pahanI.
;He has got a deep insight into the subject .
;usako isa viRaya kI eka gaharI samaJa hE.
;
;--"2.anxara_waka"
;His involvement in the affair was very deep.
;vaha isa mAmale meM anxara_waka waka WA.  <---gaharAI waka
;
;--"3.nIce_waka"  <-- gaharAI meM
;He was looking for minerals deep in the earth
;vaha pqWvI meM nIce waka ke Kanija DUzDa rahA WA.
;
;--"4.gamBIra"    <---gaharA
;His sentences had deep meanings.
;usake vAkyoM meM gahare arWa howe We.
;He had a deep voice.
;usakI AvAjZa gamBIra/gaharI WI.
;
;--"5.magna"
;He was deep in thoughts.
;vaha vicAroM meM magna WA  <--vaha vicAroM meM gaharAI waka jA cukA WA.
;
;
;"deep","Adv","1.gaharAI_se"
;They dived deep in the water to hunt for the corals.
;vaha mUzgoM kI walASa meM pAnI meM gaharAI waka uwara gae.
;
;sUwra : gaharA`
