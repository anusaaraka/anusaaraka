
;Added by human being
(defrule distinction0
(declare (salience 5000))
(id-root ?id distinction)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) between)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinction.clp 	distinction0   "  ?id "  aMwara )" crlf))
)

(defrule distinction1
(declare (salience 4000))
(id-root ?id distinction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinction.clp 	distinction1   "  ?id "  viSiRta )" crlf))
)

;default_sense && category=noun	anwara/Bexa/pahacAna	0
;"distinction","N","1.anwara/Bexa/pahacAna"
;It is necessary to make a distinction between love && infatuation
;He learned the distinction between gold && lead
;--"2.viSiRtawA/pramuKawva"
;It has the distinction of being the cheapest restaurant in town
;
;

;@@@ Added by Pramila(BU) on 01-02-2014
;It has the distinction of being the cheapest restaurant in town.  [old clp]
;इसे शहर में सबसे सस्ता रेस्तरां होने की विशिष्टता प्राप्त है.
(defrule distinction2
(declare (salience 4900))
(id-root ?id distinction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRtawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinction.clp 	distinction2   "  ?id "  viSiRtawA )" crlf))
)

;@@@ Added by Pramila(BU) on 01-02-2014
;I am told that he knows intimately every M.A. of any distinction and that there is none holding that degree from the Calcutta University 
;with whom he is not acquainted.    ;gyannidhi
;मुझे बताया गया है कि वे एम॰ ए॰ की डिग्री के प्रन्येक विशिष्ट धारक को घनिष्ठता से जानते हैं और कलकत्ता विश्वविद्यालय से इस डिग्री को प्राप्त करने वाला कोई भी ऐसा व्यक्ति नहीं है जिससे वे परिचित न हों। 
(defrule distinction3
(declare (salience 4900))
(id-root ?id distinction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-word ?id1  m.a.|m.tech.|m.e.|b.a.|b.ed.|b.tech.|b.e.|b.arch.) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta_XAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinction.clp 	distinction3   "  ?id "  viSiRta_XAraka )" crlf))
)

;@@@ Added by Pramila(BU) on 01-02-2014
;He graduated with distinction.        ;oald
;उन्होंने विशिष्ट योग्यता के साथ स्नातक किया.
(defrule distinction4
(declare (salience 4900))
(id-root ?id distinction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta_yogyawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinction.clp 	distinction4   "  ?id "  viSiRta_yogyawA )" crlf))
)

;@@@ Added by Pramila(BU) on 01-02-2014
;Naomi got a distinction in maths.        ;oald
;नाओमी ने गणित में एक विशिष्ट योग्यता प्राप्त की.
(defrule distinction5
(declare (salience 4900))
(id-root ?id distinction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-in_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta_yogyawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinction.clp 	distinction5   "  ?id "  viSiRta_yogyawA )" crlf))
)
