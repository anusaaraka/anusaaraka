

;Added by Meena(5.9.09)
;The town was founded by English settlers in 1790 . 
(defrule found0
(declare (salience 4000))
(id-root ?id found)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id founded)
(kriyA-subject ?id ?id1)
(id-root ?id1 college|institution|organisation|club|school|city|town|company|country)
;(kriyA-in_saMbanXI  ?id ?id2)
(kriyA-by_saMbanXI  ?id ?id3)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApiwa_kara))
(assert (id-wsd_root ?id found))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found0   "  ?id "  sWApiwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  found.clp      found0   "  ?id "  found )" crlf)
)
)



;Added by Meena(7.9.09)
;Her family founded the college in 1895 . 
(defrule found1
(declare (salience 3500))
(id-root ?id found)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id founded)
(kriyA-object ?id ?id1)
(id-root ?id1 college|institution|organisation|club|school|city|town|company|country)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApanA_kara))
(assert (id-wsd_root ?id found))
;(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found1  "  ?id "  sWApanA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  found.clp      found1   "  ?id "  found )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  found.clp      found1   "  ?id "  ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  found.clp      found1   "  ?id "  kA )" crlf)
)
)

;Added by Meena(7.9.09)
;The marriage was founded on love and mutual respect .
(defrule found2
(declare (salience 3000))
;(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id founded )
(kriyA-subject ?id ?id1)
(kriyA-on_saMbanXI ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAriwa))
(assert (id-wsd_root ?id found))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found2   "  ?id "  AXAriwa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  found.clp      found2   "  ?id "  found )" crlf)
)
)

;Modified by Meena(1.06.11);added (kriyA-kqxanwa_karma  ?id  =(+ ?id 1)) for Ex.She was found crying in a patch of nettles. 
;Modified by Meena(23.02.10)
;Added by Meena(5.9.09)
;There is still a ray of hope that the missing child will be found .
;Detectives found no mark on the body.
(defrule found3
(declare (salience 3000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id found )
(or(kriyA-subject ?id ?subj)(kriyA-kqxanwa_karma  ?id  =(+ ?id 1)))
(id-root =(- ?id 1) ?root)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(assert (id-wsd_root ?id find))
(if (neq ?root be) then 
	(assert (kriyA_id-subject_viBakwi ?id ko))
)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found3   "  ?id "  mila )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  found.clp      found3   "  ?id "  find )" crlf)
(if (neq ?root be) then
        (assert (kriyA_id-subject_viBakwi ?id ko))
        (printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  found.clp      found3   "  ?id "  ko )" crlf)
 )
)
)


;Modified  by Meena(20.4.10) Added (or(id-word =(- ?id 1) are|were)(id-word =(- ?id 2) are|were))
; and changed the meaning from "ho" to "pA" 
;Added by Meena(4.3.10)
;Such flowers are found mainly in Europe . 
;The remains of some Roman earthenware vessels were found during the dig.
; Added "is" in the list by Shirisha Manju (30-05-13)  Ex: The holy book is found in the temples. 
; Added "was" in the list by Pramila(banasthali University) (20-08-13) Ex: It was found to be true.
(defrule found03
(declare (salience 3000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id found)
(or(id-word =(- ?id 1) is|are|were|was)(id-word =(- ?id 2) is|are|were|was))
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA))
(assert (id-wsd_root ?id find))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found03   "  ?id "  pA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  found.clp      found03   "  ?id "  find )" crlf)
)
)

;Added by Pramila(Banasthali University)
;Danish found that compass needle is deflected by passing an electric current through a wire placed near the needle.
(defrule found4
(declare (salience 3100))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id found )
(id-word =(+ ?id 1) that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA))
(assert (id-wsd_root ?id find))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found4   "  ?id "  pA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  found.clp      found4   "  ?id "  find )" crlf)
)
)
;He also argued that light is electromagnetic in nature and its speed can be found by making purely electric 
;and magnetic measurements.----physics
;उन्होंने यह भी प्रमाणित किया कि प्रकाश की प्रकृति वैद्युतचुम्बकीय है तथा इसकी चाल केवल विद्युत तथा चुम्बकीय मापों द्वारा प्राप्त की जा सकती है . 
;Added by Pramila(Banasthali University)
(defrule found5
(declare (salience 3400))
(id-root ?id found)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(assert (id-wsd_root ?id found))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found5   "  ?id "  prApwa_kara )" crlf)
)
)
;-------------------------------- Default --------------------------------------
;Added by Pramila(Banasthali University)
(defrule found6
(declare (salience 2900))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id found)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA))
(assert (id-wsd_root ?id find))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found6   "  ?id "  pA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  found.clp      found6   "  ?id "  find )" crlf)
)
)

