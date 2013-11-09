
(defrule dig0
(declare (salience 5000))
(id-root ?id dig)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dig.clp	dig0  "  ?id "  " ?id1 "  Koxa  )" crlf))
)

;We had to dig the tree out(of the snow).
;hameM pedZa ko barPa meM se (Koxakara) nikAlanA padZA
(defrule dig1
(declare (salience 4900))
(id-root ?id dig)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Koja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dig.clp	dig1  "  ?id "  " ?id1 "  Koja_kara  )" crlf))
)

;I need my books right now && you'll have to dig it out.
;muJe apanI kiwAba aBI cAhie Ora wumhe use aBI DZUzDZanA hogA
(defrule dig2
(declare (salience 4800))
(id-root ?id dig)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uKAdZa_PeMka));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " dig.clp dig2 " ?id "  uKAdZa_PeMka )" crlf)) 
)

;We dug up that old statue from the building.
;hamane usa purAnI mUrwI ko imArawa se uKAdZa PEMkA
(defrule dig3
(declare (salience 4700))
(id-root ?id dig)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uKAdZa_PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dig.clp	dig3  "  ?id "  " ?id1 "  uKAdZa_PeMka  )" crlf))
)

;We dug up that old statue from the building.
;hamane usa purAnI mUrwI ko imArawa se uKAdZa PEMkA
(defrule dig4
(declare (salience 4600))
(id-root ?id dig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KoxAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dig.clp 	dig4   "  ?id "  KoxAI )" crlf))
)

;"dig","N","1.KoxAI"
;The workers filled in the dig with mud. 
;
(defrule dig5
(declare (salience 4500))
(id-root ?id dig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dig.clp 	dig5   "  ?id "  Koxa )" crlf))
)

;"dig","VT","1.KoxanA"
;The workers digged  holes to plant trees.
;
;LEVEL 
;Headword : dig
;
;Examples --
;
;"dig","V","1.KoxanA"
;They are digging a well.
;ve kuAz Koxa rahe hEM
;
;"dig","N","1.PabawI"
;Hari is always making little digs at Mohan.
;hari hameSa mohana para Citaputa PabawiyAz kasawA rahawA hE.<--PabawI kasanA<---BAzvoM ko kurexanA<-KoxanA
;
;sUwra : KoxanA[_>PabawI]
;
