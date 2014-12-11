



(defrule pluck0
(declare (salience 5000))
(id-root ?id pluck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pluck.clp 	pluck0   "  ?id "  sAhasa )" crlf))
)

;"pluck","N","1.sAhasa"
;The boy showed his pluck in capturing the decoits.
;



;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Police plucked a drowning girl from the river yesterday.  [OALD]
;पुलीस ने कल नदी में एक डूबती हुई लडकी को बचाया . 
(defrule pluck1
(declare (salience 4900))
(id-root ?id pluck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kAlavAcI  ?id ?)
(kriyA-object  ?id ?)
(kriyA-subject  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pluck.clp 	pluck1   "  ?id "  bacAyA )" crlf))
)





;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;I plucked an orange from the tree. [OALD]
;मैंने पेड से एक नारङ्गी तोङा . 
(defrule pluck2
(declare (salience 4800))
(id-root ?id pluck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 tree|plant|flower)
(kriyA-from_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wofA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pluck.clp 	pluck2   "  ?id "  wofAc )" crlf))
)



;$$$Modified by Sonam Gupta MTech IT Banasthali 2013
;A helicopter plucked him from the sea. [Cambridge]
;हेलिकोप्टर ने समुद्र से उसको खीँचा . 
(defrule pluck4
(declare (salience 4600))
(id-root ?id pluck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pluck.clp 	pluck4   "  ?id "  KIzcA )" crlf))
)



;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Plucking can be done from the first year. [Gyannidhi]
;पत्ती तोङना प्रथम वर्ष से किया जा सकता है . 
(defrule pluck5
(declare (salience 5500))
(id-word ?id plucking)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawwI_wofanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pluck.clp 	pluck5   "  ?id "  pawwI_wofanA )" crlf))
)



;@@@Added by Sonam Gupta MTech IT Banasthali 25-1-2014
;I have not yet plucked up the courage to ask her. [Cambridge]
;मैं अब तक उससे पूछने का साहस नहीं जुटा पाया हूँ . 
(defrule pluck6
(declare (salience 5500))
(id-root ?id pluck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 courage)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jutA_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pluck.clp 	pluck6   "  ?id "  jutA_pA )" crlf))
)



;"pluck","V","1.wodanA"
;We should not pluck the flowers from the public park.
;--"2.ocanA"
;The cheff plucked && prepared the chicken to cook.
;--"3.KIMcanA"
;I plucked && showed the licence to the harassing traffic constable.
;--"4.bacAnA"
;the fisherman who were being drowned in the sea were plucked by airforce.
;
