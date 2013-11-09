
(defrule pack0
(declare (salience 5000))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id packing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAzXane_ke_liye_prayukwa_paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pack.clp  	pack0   "  ?id "  bAzXane_ke_liye_prayukwa_paxArWa )" crlf))
)

;"packing","N","1.bAzXane ke liye prayukwa paxArWa"
;He was packing his luggage for a holiday tour.
;
;
(defrule pack1
(declare (salience 4900))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pack.clp	pack1  "  ?id "  " ?id1 "  CodZa  )" crlf))
)

;This idea is not feasible.just pack in!!
;yaha vicAra sahaja nahIM hE,ise CodZa xo
(defrule pack2
(declare (salience 4800))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pack.clp	pack2  "  ?id "  " ?id1 "  Beja  )" crlf))
)

;Have you packed the kids off to bed?
;kyA wumane baccoM ko sone ke lie Beja xiyA?
(defrule pack3
(declare (salience 4700))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pack.clp	pack3  "  ?id "  " ?id1 "  baMxa_kara  )" crlf))
)

;isa kArya ko baMxa karo Ora mere sAWa calo !
(defrule pack4
(declare (salience 4600))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 articles)
(kriyA-articles_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAna_raKa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pack.clp pack4 " ?id "  sAmAna_raKa )" crlf)) 
)

(defrule pack5
(declare (salience 4500))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 articles)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAmAna_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pack.clp	pack5  "  ?id "  " ?id1 "  sAmAna_raKa  )" crlf))
)

(defrule pack6
(declare (salience 4400))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id potalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack6   "  ?id "  potalI )" crlf))
)

;"pack","N","1.potalI"
;My father asked me to bring a pack of biscuits from the market.
;Everyday I carry a pack of books to school.
;--"2.samUha"
;A pack of scientists was sent to America for some research.
;Last Sunday a wild pack of wolves were brought down to the zoo from the jungles.
;
(defrule pack7
(declare (salience 4300))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaTarI_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack7   "  ?id "  gaTarI_banA )" crlf))
)

;"pack","V","1.gaTarI_banAnA"
;Pack your luggage as soon as possible.
;Usually glassware is protected against breaking by packing a cover of soft materials like cotton && hay around them.
;
