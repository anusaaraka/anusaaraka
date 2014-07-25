
(defrule dismay0
(declare (salience 4000))
(id-root ?id dismay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wraswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dismay.clp 	dismay0   "  ?id "  wraswa )" crlf))
)

;"dismay","N","1.wraswa"
;She expressed her dismay at his failure to secure top rank.
;
(defrule dismay1
(declare (salience 4900))
(id-root ?id dismay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirASa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dismay.clp 	dismay1   "  ?id "  nirASa_kara )" crlf))
)

;"dismay","VT","1.nirASa_karanA"
;We were dismayed at Indian teams poor performance.
;

;@@@ Added by Pramila(banasthali University) on 22-01-2014
;The crowd threw up their hands in dismay.
;भीड ने  निराशा में उनके हाथ उपर उठाए .
(defrule dismay2
(declare (salience 5000))
(id-root ?id dismay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirASA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dismay.clp 	dismay2   "  ?id "  nirASA )" crlf))
)

