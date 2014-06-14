
(defrule pat0
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anukUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat0   "  ?id "  anukUla )" crlf))
)

;"pat","Adj","1.anukUla"
;Her pat reaction revealed her presence of mind.
;
(defrule pat1
(declare (salience 4900))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wuraMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat1   "  ?id "  wuraMwa )" crlf))
)

;"pat","Adv","1.wuraMwa"
;Before I asked the question pat came the reply.
;
(defrule pat2
(declare (salience 4800))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WapakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat2   "  ?id "  WapakI )" crlf))
)

;"pat","N","1.WapakI"
;He was given a pat on his back for his courageous feat.
;
(defrule pat3
(declare (salience 4700))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WapaWapA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat3   "  ?id "  WapaWapA )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;The minister came out with a pat response. [cambridge]
;मन्त्री एक रटा-रटाया जवाब के साथ बाहर आया .
(defrule pat4
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-root ?id1 answer|response|reaction|reply)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ratA-ratAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat4   "  ?id "  ratA-ratAyA )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;I got a pat on the back from my boss. [cambridge]
;मुझे अपने मालिक से शाबाशी मिली .
(defrule pat5
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 get)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAbASI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat5   "  ?id "  SAbASI )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;I'd given the talk so many times I had it off pat. [cambridge]
;मैं इतनी बार भाषण दे चुका हूँ कि मुझे यह रट गया है .
(defrule pat6
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-off_saMbanXI  ? ?id)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pat.clp  pat6  "  ?id "  " ?id1 "  rata_jA  )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;Pat your face dry with a soft towel. [cambridge]
;अपने चेहरे को मुलायम तौलिया से पोंछिये .
(defrule pat7
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 face)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id poMCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat7   "  ?id "  poMCa )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;Baked potatoes with a pat of butter and a sprinkle of paprika. [oald]
;भुने आलू मक्खन की टिकिया और मिर्च के छिड़काव के साथ .
(defrule pat8
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tikiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat8   "  ?id "  tikiyA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;He deserves a pat on the back for all his hard work. [oald]
;अपनी सारी मेहनत के लिये वह शाबाशी का पात्र है .
(defrule pat9
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAbASI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat9   "  ?id "  SAbASI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;The police patted the suspect down at the scene. [M-W]
;पोलिस ने सन्दिग्ध की घटना की जगह पर तलाशी ली .
(defrule pat10
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 suspect|accused|convict|offender)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walASI_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat10   "  ?id "  walASI_le )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;She has her lines down pat. [M-W]
;उसने अपनी पंक्तियाँ रट ली हैं .
(defrule pat11
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adverb)
(kriyA-down_saMbanXI  ? ?id)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ratI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pat.clp  pat11  "  ?id "  " ?id1 "  ratI  )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;Despite our objections, they are going to stand pat with their decision. [M-W]
;हमारे विरोध के बावजूद, वो अपने निर्णय के साथ अटल खड़े रहेंगे .
(defrule pat12
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adverb)
(kriyA-object  ?id1 ?id)
(id-root ?id1 stand)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id atala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat12   "  ?id "  atala )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;His explanation was too pat to be believable. [M-W]
;उसका स्पष्टीकरण विश्वास करने के लिये कुछ ज्यादा ही ठीक था .
(defrule pat13
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(viSeRya-viSeRaka  ?id ?id1)
(id-root ?id1 too)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat13   "  ?id "  TIka )" crlf))
)

;"pat","VT","1.WapaWapAnA"
;She patted the baby to sleep.
;
