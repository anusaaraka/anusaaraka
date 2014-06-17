
(defrule knit0
(declare (salience 5000))
(id-root ?id knit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id knitting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bunanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  knit.clp  	knit0   "  ?id "  bunanA )" crlf))
)

;"knitting","N","1.bunanA"
;She likes knitting.
;
(defrule knit1
(declare (salience 4900))
(id-root ?id knit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bunAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knit.clp 	knit1   "  ?id "  bunAI )" crlf))
)

;"knit","N","1.bunAI"
;The knit of this sweater is very fine.
;
(defrule knit2
(declare (salience 4800))
(id-root ?id knit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knit.clp 	knit2   "  ?id "  buna )" crlf))
)

;"knit","V","1.bunanA"
;She knitted a sweater.
;I bought knitted sweater from the shop.
;

;@@@ Added by Prachi Rathore[12-2-14]
;The bone failed to knit correctly.[oald]
;हड्डी सही ढङ्ग से जुडने में असफल हुई . 
(defrule knit3
(declare (salience 5000))
(id-root ?id knit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id juda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knit.clp 	knit3   "  ?id "  juda )" crlf))
)
