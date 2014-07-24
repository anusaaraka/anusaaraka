
(defrule wed0
(declare (salience 5000))
(id-root ?id wed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wedding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vivAhowsava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wed.clp  	wed0   "  ?id "  vivAhowsava )" crlf))
)

;"wedding","N","1.vivAhowsava"
;We have to attend  a wedding on Sunday.
;
(defrule wed1
(declare (salience 4900))
(id-root ?id wed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wedded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gaTabanXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wed.clp  	wed1   "  ?id "  gaTabanXiwa )" crlf))
)

;"wedded","Adj","1.gaTabanXiwa"
;She is wedded to the cause of the poor .
;
;
(defrule wed2
(declare (salience 100))
(id-root ?id wed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id byAha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wed.clp 	wed2   "  ?id "  byAha_kara )" crlf))
)

;"wed","VTI","1.byAha_karanA"
;Tom weddded Mary.
;
;

;@@@ Added by Pramila(BU) on 04-03-2014
;The priest wedded Gokul and Nidhi.    ;shiksharthi
;पुरोहित ने गोकुल और निधि की शादी कराई
(defrule wed3
(declare (salience 4800))
(id-root ?id wed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id3)
(conjunction-components  ?id3 ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAxI_karA))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wed.clp 	wed3   "  ?id "  SAxI_karA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  wed.clp 	wed3   "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  wed.clp 	wed3   "  ?id " kA )" crlf))
)
