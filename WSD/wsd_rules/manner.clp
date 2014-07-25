;$$$ Modified by Nandini(21-11-2013)
;Added by sheetal(6-10-09)
;It is not a good manner to eat alone.
;akelA KAnA acCA AcaraNa nahIM hE.
;His manner was polite but cool.[oxford advanced lerner dictionary]
;usakA AcaraNa namra paranwu SIwala WA.
(defrule manner0
;(declare (salience 5000))
(declare (salience 100))
(id-root ?id manner)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject ? ?id)(saMjFA-to_kqxanwa  ?id ?))
(id-cat_coarse ?id noun)
;(id-word =(- ?id 1) good)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AcaraNa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  manner.clp       manner0   "  ?id "  AcaraNa )" crlf))
)

;@@@ Added by Nandini (21-11-2013)
;He has no manners.[oxford advanced lerner dictionary]
;use wamIjaz nahim hE.
(defrule manner2
(declare (salience 50))
(id-root ?id manner)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wamIjaz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  manner.clp       manner2   "  ?id "  wamIjaz)" crlf))
)

;@@@ Added by Nandini (21-11-2013)
;She could at least have the good manners to let me know she won't be able to attend.[oxford advanced lerner dictionary]
;usame iwanA wo SiStAcAra honA cAhiye ki vaha muJe bawAye ki vaha  A nahiM sakawI. 
(defrule manner3
(declare (salience 100))
(id-root ?id manner)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-anaBihiwa_subject  ? ?id)(kriyA-prayojya_karwA  ? ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiStAcAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  manner.clp       manner3   "  ?id "  SiStAcAra)" crlf))
)
;===============default-rule==================

;@@@ Added by Nandini (21-11-2013)
;She answered in a businesslike manner.[oxford advanced lerner dictionary]
;usane vyAvahArika warIke se uwwara xiyA.
(defrule manner1
(declare (salience 50))
(id-root ?id manner)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  manner.clp       manner1   "  ?id "  warIkA )" crlf))
)
