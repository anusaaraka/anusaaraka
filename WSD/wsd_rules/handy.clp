
(defrule handy0
(declare (salience 5000))
(id-root ?id handy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nipuNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handy.clp 	handy0   "  ?id "  nipuNa )" crlf))
)

;"handy","Adj","1.nipuNa"
;Arjuna was handy in archery .
;arjuna XanurvixyA meM nipuNa WA.
;
(defrule handy1
(declare (salience 4900))
(id-root ?id handy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handy.clp 	handy1   "  ?id "  xakRa )" crlf))
)

;@@@ Added by Prachi Rathore[21-1-14]
;Don't throw that away—it might come in handy.[oald]
;इसे मत फेंकिए — यह काम आ सकता है . 
(defrule handy2
(declare (salience 5500))
(id-root ?id handy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(kriyA-in_saMbanXI  ?id1 ?id)
(id-root ?id1 come)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handy.clp 	handy2   "  ?id "  kAma )" crlf))
)


;@@@ Added by Prachi Rathore[21-1-14]
;Always keep a first-aid kit handy.[oald]
;एक प्राथमिक चिकित्सा उपकरण समूह हमेशा पास रखिए . 
(defrule handy3
(declare (salience 5500))
(id-root ?id handy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handy.clp 	handy3   "  ?id "  pAsa )" crlf))
)


;@@@ Added by Prachi Rathore[21-1-14]
; Some handy hints for removing stains[oald]
;कुछ आसान सुझाव है धब्बे निकालने के लिये  . 
(defrule handy4
(declare (salience 5500))
(id-root ?id handy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(kriyA-kriyA_viSeRaNa  ? ?id)(viSeRya-viSeRaNa  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AsAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handy.clp 	handy4   "  ?id "  AsAna )" crlf))
)
;"handy","N","1.xakRa/sulaBa"
