
(defrule plop0
(declare (salience 5000))
(id-root ?id plop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CapAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plop.clp 	plop0   "  ?id "  CapAka )" crlf))
)

;"plop","N","1.CapAka"
;The small boy hurled small stones in to water to hear && enjoy the plop.
;
(defrule plop1
(declare (salience 4900))
(id-root ?id plop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CapAka_kI_Xvani_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plop.clp 	plop1   "  ?id "  CapAka_kI_Xvani_kara )" crlf))
)

;"plop","V","1.CapAka_kI_Xvani_karanA"
;While bathing the child ploped the water.
;

;@@@ Added by Sonam Gupta MTech IT Banastahli 16-3-2014
;The frog plopped back into the water. [oald]
;मेंढक पानी में वापिस कूदा .
(defrule plop2
(declare (salience 5500))
(id-root ?id plop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-root ?id1 back)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plop.clp 	plop2   "  ?id "  kUxa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banastahli 16-3-2014
;A tear plopped down onto the page she was reading. [oald]
;आँसू पृष्ठ पर गिरा जब वह पढ़ रही थी .
(defrule plop3
(declare (salience 5500))
(id-root ?id plop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plop.clp 	plop3   "  ?id "  gira )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banastahli 16-3-2014
;Can you just plop some ice in my drink? [oald]
;क्या आप मेरे पेय में कुछ बर्फ डाल सकते हैं ?
(defrule plop4
(declare (salience 5500))
(id-root ?id plop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?noun)
(viSeRya-in_saMbanXI  ?noun ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plop.clp 	plop4   "  ?id "  dAla )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banastahli 16-3-2014
;The stone plopped into the river.  [M-W]
;पत्थर नदी में गिरा .
(defrule plop5
(declare (salience 5500))
(id-root ?id plop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plop.clp 	plop5   "  ?id "  gira )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banastahli 16-3-2014
;She plopped onto the couch.  [M-W]
;वह काउच पर बैठी .
(defrule plop6
(declare (salience 5500))
(id-root ?id plop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-onto_saMbanXI  ?id ?id1)
(id-root ?id1 couch|sofa|chair|bed)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plop.clp 	plop6   "  ?id "  bETI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banastahli 16-3-2014
;I can't afford to just plop down $30 for a T-shirt.  [M-W]
;मैं मात्र एक ट_-शर्ट के लिये ३० $ नहीं झोंक सकता .
(defrule plop7
(declare (salience 5600))
(id-root ?id plop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 down)
(id-cat_coarse ?id2 number)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JoMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " plop.clp  plop7  "  ?id "  " ?id1 "  JoMka  )" crlf))
)
