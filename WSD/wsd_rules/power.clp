
(defrule power0
(declare (salience 5000))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id powered )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id UrjAvAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  power.clp  	power0   "  ?id "  UrjAvAna )" crlf))
)

;"powered","Adj","1.UrjAvAna"
;
;to_vAlA_viSeRya=come && category=noun	Sakwi	12.5506193386689
(defrule power1
(declare (salience 4900))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power1   "  ?id "  Sakwi )" crlf))
)

(defrule power2
(declare (salience 4800))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power2   "  ?id "  samarWa_banA )" crlf))
)

(defrule power3
(declare (salience 4700))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power3   "  ?id "  samarWa_ho )" crlf))
)

;"power","V","1.samarWa_honA[banAnA]"
;The toys are powered by batteries.
;He powered his way into the lead.
;
;

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-12-2013
;He likes to have power over people. [Cambridge]
;वह लोगों के ऊपर नियन्त्रण पसन्द करता है . 
(defrule power4
(declare (salience 5500))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-over_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyanwraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power4   "  ?id "  niyanwraNa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-12-2013
;When did this government come to power? [Cambridge]
;यह सरकार सत्ता में कब आई थी? 
(defrule power5
(declare (salience 5500))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-to_saMbanXI  ? ?id)(kriyA-in_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power5   "  ?id "  sawwA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-12-2013
;Turn off the power at the main switch.[Cambridge]
;मेन स्विच पर बिजली बुझा दीजिए . 
(defrule power6
(declare (salience 5500))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 switch|failure)
(or(viSeRya-at_saMbanXI  ?id ?id1)(kriyA-object  ?id1 ?id)(viSeRya-viSeRaNa  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bijalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power6   "  ?id "  bijalI )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-12-2013
;It's not in my power to stop him publishing this book. [Cambridge]
;इस पुस्तक का प्रकाशन रोकना मेरे सामर्थ्य में नहीं है . 
(defrule power7
(declare (salience 5500))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(saMjFA-to_kqxanwa  ?id ?)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmarWya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power7   "  ?id "  sAmarWya )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-12-2013
;He had lost the power of speech.  [OALD]
;उसने बोलने की क्षमता खो दी है . 
(defrule power8
(declare (salience 5500))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 speech|concentration)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRamawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power8   "  ?id "  kRamawA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-12-2013
;The Secretary of State has the power to approve the proposals.  [OALD]
;मन्त्री के पास स्वीकृति देने का अधिकार है . 
(defrule power9
(declare (salience 5500))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 approve)
(saMjFA-to_kqxanwa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power9   "  ?id "  aXikAra )" crlf))
)

;----------------- Default Rule ----------------------
;@@@ Added by Sonam Gupta MTech IT Banasthali 30-12-2013
;The powers of the police must be clearly defined. [OALD]
;पुलीस के अधिकार स्पष्टतः परिभाषित करने होंगे . 
(defrule power10
(declare (salience 5400))
(id-word ?id powers)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power10   "  ?id "  aXikAra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-12-2013
;They were impressed by the power of her arguments. [OALD]
;वे उसकी तर्क करने की छमता से प्रभावित हुएे.  
;The drug may affect your powers of concentration. [Cambridge]
;दवा आपकी एकाग्रता की छमता को प्रभावित कर सकती है . 
(defrule power11
(declare (salience 5500))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 argument|dispute|disagreement|concentration)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CamawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power11   "  ?id "  CamawA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-12-2013
;After the emperor died, power passed to his eldest son. [MW]
;सम्राट् की मृत्यु के बाद, सत्ता उसके सबसे बडे बेटे को मिली . 
;The peaceful transfer of power to the newly elected president. [MW]
;नये निर्वाचन किये हुए अध्यक्ष को सत्ता का शान्त स्थानान्तरण .
;The president was removed from power in the recent uprising. [MW]
;अध्यक्ष को हाल की बगावत में सत्ता से हटा दिया गया था .
(defrule power12
(declare (salience 5500))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 pass|transfer|remove|government)
(or(kriyA-subject  ?id1 ?id)(viSeRya-of_saMbanXI  ?id1 ?id)(kriyA-from_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power12   "  ?id "  sawwA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-1-2014
;The new government has taken power. [MW]
;नयी सरकार ने सत्ता ले ली है . 
(defrule power13
(declare (salience 5500))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 pass|transfer|remove|government)
(and(kriyA-object  ?kri ?id)(kriyA-subject  ?kri ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power13   "  ?id "  sawwA )" crlf))
)
