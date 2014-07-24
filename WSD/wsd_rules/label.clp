;Added by Nandini (26-11-13)
;--"2.nAma"
;I hated the label ‘housewife’.[oxford advanced learner's dictionary]
;muze gruhINI nAma se nParawa hE.
(defrule label1
(declare (salience 100)) 
(id-root ?id label)
?mng <-(meaning_to_be_decided ?id)
(and(kriyA-object  ? ?id1)(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id))
(id-word ?id1 housewife)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  label.clp 	label1   "  ?id "  nAma )" crlf))
)

;Modified by Nandini (26-11-13)
;The file was labelled 'Private'. [oxford advanced learner's dictionary]
;PAila 'Private' nAmiwa kI gayI WI.
(defrule label2
(declare (salience 4900))
(id-root ?id label)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAmiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  label.clp 	label2   "  ?id "  nAmiwa_kara )" crlf))
)

;He seems to be stuck with the label of 'troublemaker'.[oxford advanced learner's dictionary]
;The label of HMV on the castte ensures its good quality.
;castte para ecaemavI kA nAma usakI acCI guNavawwA suniSciwa karawA hE.
(defrule label3
(declare (salience 100)) ;Comented by Nandini (26-11-13)
(id-root ?id label)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  label.clp 	label3   "  ?id "  nAma )" crlf))
)

;================default rule==============

;Modified by Nandini (26-11-13)
;The washing instructions are on the label.[Cambridge Advanced Learner’s Dictionary]
;Xone ke liye nirxeSa lebala para hEM.
(defrule label0
;(declare (salience 5000)) ;Comentted by Nandini (26-11-13)
(declare (salience 50)) 
(id-root ?id label)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lebala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  label.clp 	label0   "  ?id "  lebala )" crlf))
)

;===========old-example=======================
;"label","N","1.parcA/nAmapawra"
;Label on the centre of gramophone record must be prescribing the name of the singer.
;This movie is an action movie && the label seems to be true.
;--"2.nAma"
;The label of HMV on the castte ensures its good quality.
;"label","V","1.nAmiwa_kara"
;===========Additional-example============================
;He'll only wear clothes with a designer label.
;There should be washing instructions on the label.
;He seems to be stuck with the label of 'troublemaker'.
;It's his first release for a major label.
;They have just signed a deal with a major record label.
;We carefully labelled each item with the contents and the date.
;He was labelled as a traitor by his former colleagues.
;It is unfair to label a small baby as naughty.


