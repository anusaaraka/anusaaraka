

;Added by Meena(16.9.10)
;In the first experiment, a large magnet and a small magnet are weighed separately, and then one magnet is hung from the pan of the top balance so that it is directly above the other magnet.
(defrule pan00
(declare (salience 5000))
(id-root ?id pan)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paladA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pan.clp       pan00   "  ?id "  paladA )" crlf))
)




(defrule pan0
;(declare (salience 5000))
(id-root ?id pan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pan.clp 	pan0   "  ?id "  wavA )" crlf))
)

(defrule pan1
(declare (salience 4900))
(id-root ?id pan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wasale_meM_kuCa_Xo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pan.clp 	pan1   "  ?id "  wasale_meM_kuCa_Xo )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;His last novel was panned by the critics. [Cambridge]
;उसके पिछले उपन्यास की आलोचकों द्वारा आलोचना की गई थी.
(defrule pan2
(declare (salience 5000))
(id-root ?id pan)
(id-word ?id panned)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pan.clp 	pan2   "  ?id "  AlocanA_kara )" crlf))
)


;"pan","V","1.wasale meM kuCa XonA"
;The prospectors living in South Africa pan for gold && live their life.
;--"2."
;The BSP candidate was panned during his visit to Meerut.
;--"3."
;The photographer panned the camera to take perfect snaps.
;
;
