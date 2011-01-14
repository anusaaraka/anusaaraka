
(defrule train0
(declare (salience 5000))
(id-root ?id train)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id training )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praSikRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  train.clp  	train0   "  ?id "  praSikRaNa )" crlf))
)

;"training","N","1.praSikRaNa"
;Anand got good training in chess.
;
(defrule train1
(declare (salience 4900))
(id-root ?id train)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id trained )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praSikRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  train.clp  	train1   "  ?id "  praSikRiwa )" crlf))
)

(defrule train2
(declare (salience 4800))
(id-root ?id train)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id trained )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praSikRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  train.clp  	train2   "  ?id "  praSikRiwa_kara )" crlf))
)

(defrule train3
(declare (salience 4700))
(id-root ?id train)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id relagAdI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  train.clp 	train3   "  ?id "  relagAdI )" crlf))
)

;"train","N","1.relagAdI"
;The boy saw the train coming.
;--"2.kawAra"
;We saw the baggage train.
;--"3.parikara"
;The actress was followed by a train of admirers.
;--"4.silasilA"
;His call obstructed my train of thoughts.
;--"5.puCallA"
;The girls are holding the train of the bride's gown.
;
(defrule train4
(declare (salience 4600))
(id-root ?id train)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikRA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  train.clp 	train4   "  ?id "  SikRA_xe )" crlf))
)

;"train","VT","1.SikRA_xenA"
;We have to train our children properly.
;--"2.praSikRiwa_karanA"
;They train their students well.
;--"3.aByAsa_karanA"
;He trained the dog to look after the house.
;--"4.se_[kisI_para]niSAnA_bAzXanA"
;He trained his camera on the picturesque view.
;--"5.anuvarXana_karanA"
;I trained a creeper over the fence.
;
