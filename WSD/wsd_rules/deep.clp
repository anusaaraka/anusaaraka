;Added by Sonam Gupta MTech IT Banasthali 2013
;A deep voice
;एक धीमी अावाज.
(defrule deep0
(declare (salience 5000))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(id-root ?id1 voice|sound|roar|groan)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XImI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep0   "  ?id "  XImI )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;They travelled deep into the forest. 
;उन्होंने जङ्गल के अन्दर दूर तक यात्रा की . 
(defrule deep1
(declare (salience 4900))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(id-root ?id1 travel|journey)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep1   "  ?id "  xUra_waka )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;She pushed her hands deep into her pockets.
;उसने उसकी जेबों के अन्दर गहराई तक उसके हाथ धकेले . 
(defrule deep2
(declare (salience 4800))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(id-root ?id1 push)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharAI_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep2   "  ?id "  gaharAI_waka )" crlf))
)

;Added by Sonam Gupta MTech IT Banasthali 2013
;He's in deep trouble.
;वह गम्भीर परेशानी में है . 
(defrule deep3
(declare (salience 4700))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 trouble|problem|conflict|danger|difficulty|mess|dilemma)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gamBIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep3   "  ?id "  gamBIra )" crlf))
)

;Added by Sonam Gupta MTech IT Banasthali 2013
;A deep economic recessionThe affair had exposed deep divisions within the party.
(defrule deep4
(declare (salience 4600))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(id-root ?id1 division)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep4   "  ?id "  gahana )" crlf))
)

;Added by Sonam Gupta MTech IT Banasthali 2013
;A place of great power and of deep significance.
;अत्यधिक महतव अौर शक्ति का बढियअ स्थान . 
(defrule deep5
(declare (salience 4500))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(id-root ?id1 significance|importance)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep5   "  ?id "  awyaXika )" crlf))
)

;Added by Sonam Gupta MTech IT Banasthali 2013
;Deep respect
(defrule deep6
(declare (salience 4400))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(id-root ?id1 respect|happiness)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hArxika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep6   "  ?id "  hArxika )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;A deep sense of loss
(defrule deep7
(declare (salience 4300))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(id-root ?id1 sense|feeling)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIvar))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep7   "  ?id "  wIvar )" crlf))
)



;Added by Sonam Gupta MTech IT Banasthali 2013
;He is often so deep in his books that he forgets to eat.
(defrule deep8
(declare (salience 4200))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(id-root ?id1 book|novel|read|study)
(viSeRya-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ko_jAwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep8   "  ?id "  Ko_jAwA )" crlf))
)

;Added by Sonam Gupta MTech IT Banasthali 2013
;The firm ended up deep in debt.

(defrule deep9
(declare (salience 4100))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(id-root ?id1 end|finish)
(id-root ?id2 debt)
(and(kriyA-kriyA_viSeRaNa  ?id1 ?id)(kriyA-in_saMbanXI  ?id1 ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep9   "  ?id "  dUba )" crlf))
)

;Added by Sonam Gupta MTech IT Banasthali 2013
;She's always been a deep one, trusting no one.
(defrule deep10
(declare (salience 4000))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(id-root ?id1 one)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwarmuKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep10   "  ?id "  anwarmuKI )" crlf))
)

;Added by Sonam Gupta MTech IT Banasthali 2013
;A deep ball from Beckham
(defrule deep11
(declare (salience 3900))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(id-root ?id1 ball|football|baseball)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra_se_AwI_huI_weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep11   "  ?id "  xUra_se_AwI_huI_weja )" crlf))
)


(defrule deep12
(declare (salience 3800))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep12   "  ?id "  gaharA )" crlf))
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
(defrule deep13
(declare (salience 3700))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharAI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep13  "  ?id "  gaharAI_se )" crlf))
)

;"deep","Adv","1.gaharAI_se[meM]"
;He was deep asleep when Ram came inside the house .
;He went deep inside the river.
;The prayer was performed by standing deep in the river.
;
(defrule deep14
(declare (salience 3600))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samuxra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep14   "  ?id "  samuxra )" crlf))
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

;@@@ Added by Pramila(BU) on 31-01-2014
;This conviction, indeed, is a deep comfort to me at the moment when I take leave from work dear to me for so many weighty reasons.  ;gyannidhi
;यह विश्वास वास्तव में ऐसे समय में मेरे लिए अन्यंत सुखदायी है जब मैं उस कार्य से अवकाश प्राप्त कर रहा हूं जो बहुत वज़नदार कारणों से मुझे प्रिय रहा है।
(defrule deep15
(declare (salience 4000))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 comfort)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deep.clp 	deep15   "  ?id "  awyaMwa )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_deep15
(declare (salience 4000))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 comfort)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " deep.clp   sub_samA_deep15   "   ?id " awyaMwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_deep15
(declare (salience 4000))
(id-root ?id deep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 comfort)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " deep.clp   obj_samA_deep15   "   ?id " awyaMwa )" crlf))
)
