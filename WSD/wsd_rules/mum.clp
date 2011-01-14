
(defrule mum0
(declare (salience 5000))
(id-root ?id mum)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mumming )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mUkABInaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mum.clp  	mum0   "  ?id "  mUkABInaya )" crlf))
)

;"mumming","N","1.mUkABInaya"
;The mumming was done by some religious persons.
;
(defrule mum1
(declare (salience 4900))
(id-root ?id mum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mum.clp 	mum1   "  ?id "  SAMwa )" crlf))
)

;"mum","Adj","1.SAMwa"
;Don't keep mum when you are asked some thing.
;
;