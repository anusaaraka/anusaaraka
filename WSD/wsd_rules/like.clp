
(defrule like0
(declare (salience 5000))
(id-root ?id like)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id liking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pasanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  like.clp  	like0   "  ?id "  pasanxa )" crlf))
)

;"liking","N","1.pasanxa"
;People are so different in their likings.
;
(defrule like1
(declare (salience 4900))
(id-root ?id like)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  like.clp 	like1   "  ?id "  eka_se )" crlf))
)

;"like","Adj","1.eka_se"
;Like minded people.
;
(defrule like2
(declare (salience 4800))
(id-root ?id like)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_waraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  like.clp 	like2   "  ?id "  kI_waraha )" crlf))
)

;"like","Prep","1.waraha_kA"
;A person like Gandhi is born once in a century.
;--"2.jEsA"
;It's like him to indulge in gossip mongering.
;He speaks like his father.
;He behaves like a child.
;
(defrule like3
(declare (salience 4700))
(id-root ?id like)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasaMxa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  like.clp 	like3   "  ?id "  pasaMxa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  like.clp      like3   "  ?id " ko )" crlf)
)
)



;Added by Meena(17.9.09)
;Would you like a cup of tea?
(defrule like4
(declare (salience 4800))
(id-root ?id like)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 cup|bowl|glass|plate|dish)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasaMxa_kara))
;(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  like.clp      like4   "  ?id "  pasaMxa_kara )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  like.clp      like3   "  ?id " ko )" crlf)
)
)












;"like","V","1.pasaMxa_karanA"
;She likes her sister very much. I like milk. I like early morning walk.
;Would you like to state your views in the matter.
;--"2.uciwa_laganA"
;I didn't like his remarks.
;--"3.cAhanA"
;Would you like to go for a walk?
;
