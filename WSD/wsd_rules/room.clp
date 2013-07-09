;This file is created by Aditya and Hardik(21-06-2013),IIT(BHU) batch 2012-2017.

;There are enough rooms to accomodate everyone.
(defrule room0
(declare (salience 3000))
(id-root ?id room)
(id-word ?id rooms)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  room.clp 	room0   "  ?id "  kamarA )" crlf))
)


;He has no room for her in his life.
;There is enough room to accomodate everyone.
;There is always a room for improvement. 


(defrule room1
(declare (salience 2000))
(id-root ?id room)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object ?id1 ?id)(kriyA-aBihiwa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  room.clp 	room1   "  ?id "  sWAna )" crlf))
)

