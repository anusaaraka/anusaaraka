;Added by Meena(23.10.09)
;The stanstill alert ended.
(defrule alert0
(declare (salience 5000))
(id-root ?id alert)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cewAvanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  alert.clp      alert0   "  ?id "  cewAvanI )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 18-dec-2013
;Alerted by a noise downstairs, he sat up and turned on the light.[oald]
;नीचे मंजिल पर एक शोर से सचेत हो कर, वह उठ बैठा और बत्ती जलायी  . 
(defrule alert4
(declare (salience 5000))
(id-word ?id alerted)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?)
(not (kriyA-subject ?id ?))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sacewa_ho_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  alert.clp      alert4   "  ?id "  sacewa_ho_kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 18-dec-2013
;They had been alerted to the possibility of further price rises.[oald]
;वे और अधिक मूल्य वृद्धि की सम्भावना के लिये सचेत किए गये थे .
(defrule alert5
(declare (salience 5000))
(id-root ?id alert)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sacewa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  alert.clp      alert5   "  ?id "  sacewa_kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 18-dec-2013
;Police are warning the public to be on the alert for suspicious packages.[oald]
;पुलिस लोगो को संदिग्ध वस्तु के लिए सचेत स्थिति में रहने के लिये चेतावनी दे रही है.
;More than 5000 troops have been placed on alert.[oald]
;5000 से अधिक सैनिकों को सचेत स्थिति पर तैनात कीया गया है.
;note: if a better translation is found for 'alert' in following sentences then another rule can be formed.
(defrule alert6
(declare (salience 5000))
(id-root ?id alert)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sacewa_sWiwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  alert.clp      alert6   "  ?id "  sacewa_sWiwI )" crlf))
)



;***************DEFAULT*************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 18-dec-2013
;a bomb/fire alert.[oald]
;बम चेतावनी
(defrule alert1
(declare (salience 0))
(id-root ?id alert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cewAvani))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  alert.clp      alert1   "  ?id "  cewAvani )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 18-dec-2013
(defrule alert2
(declare (salience 0))
(id-root ?id alert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawarka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  alert.clp      alert2   "  ?id "  sawarka )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 18-dec-2013
(defrule alert3
(declare (salience 0))
(id-root ?id alert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sacewa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  alert.clp      alert3   "  ?id "  sacewa_kara )" crlf))
)


