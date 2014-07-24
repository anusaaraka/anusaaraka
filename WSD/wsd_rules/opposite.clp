;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;On the opposite page. [Cambridge]
;विपरीत पृष्ठ पर . 
(defrule opposite3
(declare (salience 5500))
(id-root ?id opposite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-cat_coarse ?id1 noun)
(id-root ?id1 page|corner|effect|end|conclusion|direction)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viparIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opposite.clp 	opposite3   "  ?id "  viparIwa )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;The boat was used to ferry the loot across to the opposite bank. [Gyannidhi]
;नाव का उपयोग उन पेटियों को नदी के दूसरी ओर के किनारे तक पहुंचाने के लिए किया गया होगा।
(defrule opposite0
(declare (salience 5000))
(id-root ?id opposite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-cat_coarse ?id1 noun)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsarI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opposite.clp 	opposite0   "  ?id "  xUsarI_ora )" crlf))
)



(defrule opposite1
(declare (salience 4900))
(id-root ?id opposite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viroXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opposite.clp 	opposite1   "  ?id "  viroXI )" crlf))
)

(defrule opposite2
(declare (salience 4800))
(id-root ?id opposite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opposite.clp 	opposite2   "  ?id "  ke_sAmane )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Is there a bakery opposite your house?
;क्या एक बेकरी के सामने आपका घर है? 
(defrule opposite4
(declare (salience 4600))
(id-root ?id opposite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
(kriyA-kAlavAcI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opposite.clp 	opposite4   "  ?id "  ke_sAmane )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;They're complete opposites. 
;वे पूर्णतयाः विपरीत हैं .  
(defrule opposite5
(declare (salience 4500))
(id-root ?id opposite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viparIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opposite.clp 	opposite4   "  ?id "  viparIwa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;We live on opposite sides of the city. [Cambridge] 
;हम शहर की दूसरी तरफ रहते हैं . 
(defrule opposite6
(declare (salience 5600))
(id-root ?id opposite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 side)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUsarI_waraPa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " opposite.clp	opposite6  "  ?id "  " ?id1 "  xUsarI_waraPa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;They represent opposite sides of the issue. [MW] 
;वे विषय के विपरीत पहलू  का प्रतिनिधित्व करते हैं .  
(defrule opposite7
(declare (salience 5800))
(id-root ?id opposite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 side)
(id-root ?id2 issue|matter|problem|subject|question|result|concern|topic)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 viparIwa_pahalU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " opposite.clp	opposite7  "  ?id "  " ?id1 "  viparIwa_pahalU )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;See opposite for further details. [OALD]
;और अधिक जानकारी के लिये सम्मुख को देखिए . 
(defrule opposite8
(declare (salience 4200))
(id-root ?id opposite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 see)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammuKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opposite.clp 	opposite4   "  ?id "  sammuKa )" crlf))
)



;"opposite","Prep","1.ke_sAmane"
;I sat opposite to him during the meal.
;
;
