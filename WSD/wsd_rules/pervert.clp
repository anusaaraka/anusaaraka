
(defrule pervert0
(declare (salience 5000))
(id-root ?id pervert)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id perverted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kAmavikqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pervert.clp  	pervert0   "  ?id "  kAmavikqwa )" crlf))
)

;"perverted","Adj","1.kAmavikqwa"
;The accused was proved to be perverted.
;
(defrule pervert1
(declare (salience 4900))
(id-root ?id pervert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikqwakAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pervert.clp 	pervert1   "  ?id "  vikqwakAmI )" crlf))
)

;"pervert","N","1.vikqwakAmI"
;He behaves like a pervert.
;

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;The history teacher tried to pervert the boys by showing them pornographic magazines. [Cambridge]
;इतिहास शिक्षक ने लडकों को अश्लील पत्रिकाएँ दिखा के उनको गुमराह करने के लिये प्रयास किया . 
(defrule pervert2
(declare (salience 4800))
(id-root ?id pervert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ? ?id)
(to-infinitive  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gumarAha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pervert.clp 	pervert2   "  ?id "  gumarAha_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
(defrule pervert3
(declare (salience 4700))
(id-root ?id pervert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 mind|brain|thinking|view|opinion|thought|attitude|belief|mentality)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pervert.clp 	pervert3   "  ?id "  vikqwa_kara )" crlf))
)



(defrule pervert4
(declare (salience 4600))
(id-root ?id pervert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurupayoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pervert.clp 	pervert4   "  ?id "  xurupayoga_kara )" crlf))
)

;"pervert","V","1.xurupayoga_karanA"
;He perverted the course of justice.
;--"2.paWaBraRta_karanA"
;Did Socrates really perverted the youth of Athens?.
;
