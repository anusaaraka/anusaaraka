
;Modified by Meena(24.02.10)
;Added by Meena(20.11.09)
;It had only a tenth of the sun's mass but showed some wobbling which could be [due to] planets in its orbit . 
(defrule due0
(declare (salience 5000))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to);Modified ?id1 as (+ ?id 1) by Manju (01-08-13) Ex: But the rest of the body continues "to" move forward "due to" inertia. 
(or(viSeRya-to_saMbanXI ?id ?)(kriyA-due_to_saMbanXI ?id2 ?));added kriyA-due_to_saMbanXI for stanford purpose Roja(09-02-11)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) ke_kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " due.clp	due0  "  ?id "  " (+ ?id 1) "  ke_kAraNa  )" crlf))
)


;Salience reduced by Meena(20.11.09)
(defrule due1
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  due.clp 	due1   "  ?id "  xeya )" crlf))
)

;"due","Adj","1.xeya/qNa"
;Payment is due
;All due respect
;Gave my comments due consideration
;--"2.prawIkRiwa"
;The train is due in 1.minutes
;
(defrule due2
(declare (salience 4000))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  due.clp 	due2   "  ?id "  xeya )" crlf))
)

;"due","N","1.xeya/qNa"
;Give the devil his due
;The society dropped him for non-payment of dues
;

;@@@ Added by Pramila(BU) on 28-12-2013 [was conflicting with sentence 'payment is due'.So '(viSeRya-for_saMbanXI  ?id ?id2)' condition 
;is necessary.]
;The band's first album is due for release later this month.     ;oald
;बैंड का पहला एलबम इस महीने बाद में रिलीज होने की उम्मीद है.
;condition '(viSeRya-for_saMbanXI  ?id ?id2)' added on 12-02-2014
(defrule due3
(declare (salience 4900))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id ?id2)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ummIxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  due.clp 	due3   "  ?id "  ummIxa )" crlf))
)

;@@@ Added by Pramila(BU) on 28-12-2013
;Payment is due on 1 October.         ;oald
;भुगतान 1 अक्टूबर को देय है.
(defrule due4
(declare (salience 4900))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-on_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  due.clp 	due4   "  ?id "  xeya )" crlf))
)

;@@@ Added by Pramila(BU) on 28-12-2013
;She's due for promotion soon.            ;oald
;वह शीघ्र प्रमोशन के योग्य है.
;condition '(viSeRya-for_saMbanXI  ?id ?id2)' added on 12-02-2014
(defrule due5
(declare (salience 4900))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id ?id2)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  due.clp 	due5   "  ?id "  yogya )" crlf))
)

;@@@ Added by Pramila(BU) on 28-12-2013
;The train is due in  five minutes.           ;sentence of this file
;ट्रेन पाँच मिनट मे प्रतीक्षित है.
(defrule due6
(declare (salience 4900))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawIkRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  due.clp 	due6   "  ?id "  prawIkRiwa )" crlf))
)

;@@@ Added by Pramila(BU) on 28-12-2013
;The village lies five miles due north of York.           ;oald
;गांव पाँच मील की दूरी पर न्यूयॉर्क सीधे उत्तर में निहित है.
(defrule due7
(declare (salience 4000))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  due.clp 	due7   "  ?id "  sIXe )" crlf))
)


;@@@ Added by Pramila(BU) on 29-01-2014
;Work on the new bridge is due to begin in September.       [problem sentence]
;नये पुल पर कार्य सितम्बर में शुरु होना बाकी है
(defrule due8
(declare (salience 5000))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(saMjFA-to_kqxanwa  ?id ?)
(id-root =(+ ?id 1) to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) bAkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " due.clp	due8  "  ?id "  " (+ ?id 1) "  bAkI  )" crlf))
)

;@@@ Added by Pramila(BU) on 12-02-2014
;He had always held that if the Indian Universities are to be indissolubly associated with the national life they must ungrudgingly accord
; due recognition to the irresistible claims of the Indian vernaculars.       ;gyannidhi
;उनका सदैव ही विश्वास रहा कि यदि भारतीय विश्वविद्यालय को स्थायी तौर पर राष्ट्रीय जीवन में शामिल करना है तो उन्हें भारत की देशी भाषाओं के प्रतिरोध दावे को उदारता के साथ उपयुक्त मान्यता 
;देना चाहिए।।।
(defrule due9
(declare (salience 4900))
(id-root ?id due)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-to_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  due.clp 	due9   "  ?id "  upayukwa )" crlf))
)
