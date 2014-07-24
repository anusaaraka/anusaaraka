
(defrule tempt0
(declare (salience 5000))
(id-root ?id tempt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tempting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praloBaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tempt.clp  	tempt0   "  ?id "  praloBaka )" crlf))
)

;"tempting","Adj","1.praloBaka"
;It is a tempting offer given by the company.
;
(defrule tempt1
(declare (salience 4900))
(id-root ?id tempt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id luBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tempt.clp 	tempt1   "  ?id "  luBA )" crlf))
)

;"tempt","VT","1.luBAnA"
;King Harishchandra was not tempted by the riches.
;
;

;;@@@   ---Added by Prachi Rathore
;Don't tempt thieves by leaving valuables clearly visible.[oald]
;कीमती चीजों को स्पष्टतः दिखता छोड  चोरों को मत ललचाइए . 
(defrule tempt2
(declare (salience 4900))
(id-root ?id tempt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-kriyArWa_kriyA  ? ?id)(kriyA-by_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lalacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tempt.clp 	tempt2   "  ?id "  lalacA )" crlf))
)

;;@@@   ---Added by Prachi Rathore
; Nothing would tempt me to live here.[oald]
;कुछ भी  मुझे यहाँ रहने के लिये नही फुसला सकता . 
(defrule tempt3
(declare (salience 4900))
(id-root ?id tempt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PusalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tempt.clp 	tempt3   "  ?id "  PusalA )" crlf))
)

;;@@@   ---Added by Prachi Rathore
; Race car drivers tempt fate every time they race.[m-w]
;रेस कार चालक हर बार रेस करने में भाग्य आजमाते हैं . 
; Nothing would tempt me to live here.
(defrule tempt4
(declare (salience 4900))
(id-root ?id tempt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kqxanwa_karma  ?id ?id1)
(id-root ?id1 fate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjamA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tempt.clp 	tempt4   "  ?id "  AjamA )" crlf))
)


