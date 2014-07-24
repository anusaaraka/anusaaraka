
(defrule daunt0
(declare (salience 4900))
(id-root ?id daunt)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niruwsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  daunt.clp 	daunt0   "  ?id "  niruwsAhiwa_kara )" crlf))
)

(defrule daunt1
(declare (salience 4000))
(id-root ?id daunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niruwsAhiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  daunt.clp 	daunt1   "  ?id "  niruwsAhiwa_ho )" crlf))
)

;"daunt","VT","1.niruwsAhiwa_karanA[honA]"
;Loosing the game did not daunt her.
;--"2.daranA[darAnA]"
;The idea of going to a strange place in the distant land daunted her.
;

;@@@ Added by Pramila(BU) on 03-01-2014
;He felt daunted by warnings.        ;shiksharthi
;वह चेतावनियों से भयभीत किया हुआ महसूस कर रहा था.
(defrule daunt2
(declare (salience 5000))
(id-root ?id daunt)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(id-root ?id1 warning|problem|task)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BayaBIwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  daunt.clp 	daunt2   "  ?id "  BayaBIwa_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 03-01-2014
;She was not at all daunted by the size of the problem.      ;cald
;वह समस्या के आकार से बिल्कुल भी भयभीत नहीं हुई थी.
(defrule daunt3
(declare (salience 5000))
(id-root ?id daunt)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root ?id2 problem|task)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BayaBIwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  daunt.clp 	daunt2   "  ?id "  BayaBIwa_ho )" crlf))
)
