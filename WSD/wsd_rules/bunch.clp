
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 31-dec-2013
;The old man was so grateful that he gave Hari a big bunch of flowers in return.[gyananidhi]
;बूढ़ा आदमी इतना कृतज्ञ हुआ कि उसने बदले में फूलों का एक बड़ा-सा गुलदस्ता हरि को दिया।
(defrule bunch5
(declare (salience 5000))
(id-root ?id bunch)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 flower)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gulaxaswA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bunch.clp     bunch5   "  ?id "  gulaxaswA )" crlf))
)


;Added by Meena(31.3.11)
;A bunch of dogs is in the yard.
(defrule bunch0
(declare (salience 5000))
(id-root ?id bunch)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 dog|cat|elephant|horse|cow|buffalo|camel|boy|girl|woman|man|lady|people|hooligan)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JuMzda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bunch.clp     bunch0   "  ?id "  JuMzda )" crlf))
)


;Added by (Meena 31.3.11)
;The monkeys bunched together in their cage.
;We were all bunched up at the back of the room.
(defrule bunch2
(declare (salience 5000))
(id-root ?id bunch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up|together)
(kriyA-subject ?id ?sub)
(or(kriyA-upasarga ?id ?id1)(kriyA-aXikaraNavAcI  ?id ?id1))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  ekawra_ho ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bunch.clp  bunch2  "  ?id "  " ?id1 "  ekawra_ho   )" crlf))
)





;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 31-dec-2013
;Added by Meena(31.3.11)
;The frighened children bunched together in the corner of the classroom
(defrule bunch3
(declare (salience 4900))
(id-root ?id bunch)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(not(kriyA-object ?id ?)) ; Added this relation by Garima.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekawra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bunch.clp 	bunch3   "  ?id "  ekawra_ho )" crlf))
)




;Added by Meena(31.3.11)
;She bunched her fingers into a fist
(defrule bunch4
(declare (salience 4900))
(id-root ?id bunch)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekawra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bunch.clp     bunch4   "  ?id "  ekawra_kara )" crlf))
)


;*************************DEFAULT RULE******************************


;Salience reduced by Meena(31.3.11)
(defrule bunch1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id bunch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gucCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bunch.clp 	bunch1   "  ?id "  gucCA )" crlf))
)



