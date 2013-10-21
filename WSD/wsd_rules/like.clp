;Added by Sonam Gupta MTech IT Banasthali 2013
;The experiments on pith balls suggested that there are two kinds of electrification and we find that like charges repel each other.

(defrule like_charges
(declare (salience 6000))
(id-root ?id like)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) charges)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sajAwIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  like.clp 	like_charges   "  ?id " sajAwIya )" crlf))
)



;We do not want the likes of you around here. Added by Sukhada (27-9-11)
(defrule like_noun
(declare (salience 5000))
(id-root ?id like)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  like.clp       like_noun   "  ?id " jEsA )" crlf))
)

;People are so different in their likings. Modified by Sukhada (27-9-11)
(defrule like0
(declare (salience 5000))
(id-root ?id liking)
?mng <-(meaning_to_be_decided ?id)
(or (id-word ?id likings)(id-word ?id liking))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  like.clp  	like0   "  ?id "  pasanxa )" crlf))
)

;It costs something like fifty cents. Added by Sukhada (29-9-11)
(defrule cost_like
(declare (salience 4900))
(id-root ?kri cost)
(id-root ?id like)
(kriyA-object  ?kri ?obj)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-like_saMbanXI  ?obj ?sam)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " like.clp    cost_like   "?id " ke_lagaBaga )" crlf))
)
	
;She is my like minded friend. She is one of my like minded friend. Modified by Sukhada (27-9-11)
(defrule like1
(declare (salience 4900))
(id-root ?id like)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) minded)
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) samAna_vicAra_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  like.clp 	like1   "  ?id "  samAna_vicAra_vAlA )" crlf))
)

;Members of the cat family have like dispositions. I gave one six blows and the other a like number. I think the like period of the preceding year would be good. Added by Sukhada (27-9-11)
(defrule like_adj
(declare (salience 4800))
(id-root ?id like)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  like.clp      like_adj   "  ?id "  samAna )" crlf))
)


;He speaks like his father. He behaves like a child. Modified by Sukhada (27-9-11)
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


;A person like Gandhi is born once in a century. Added by Sukhada (27-9-11) 
(defrule like_PropN
(declare (salience 4900))
(id-root ?id like)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-like_saMbanXI ?vi ?sa)
(id-cat_coarse ?sa PropN)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  like.clp      like_PropN   "  ?id " jEsA )" crlf))
)


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


;Modified by Meena(11.3.11) added "programming" in the list 
;Added by Meena(17.9.09)
;Would you like a cup of tea?
(defrule like4
(declare (salience 4800))
(id-root ?id like)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 cup|bowl|glass|plate|dish|programming)
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
