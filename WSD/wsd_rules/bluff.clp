
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 26-02-2014
;It was just a game of bluff.[oald]
;यह सिर्फ धोखा देने का खेल था
(defrule bluff3
(declare (salience 3000))
(id-root ?id bluff)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XoKA_xene))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  bluff.clp 	bluff3   "  ?id "  XoKA_xene )" crlf))
)


;*************************DEFAULT RULES**************************
(defrule bluff0
(declare (salience 0));salience reduced  by Garima Singh
(id-root ?id bluff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bluff.clp 	bluff0   "  ?id "  rUKA )" crlf))
)

;"bluff","Adj","1.rUKA"
;He is known for his bluff behavior .
;
(defrule bluff1
(declare (salience 0));salience reduced  by Garima Singh
(id-root ?id bluff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAzsA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bluff.clp 	bluff1   "  ?id "  JAzsA_xe )" crlf))
)

;"bluff","V","1.JAzsA_xenA/bevakUPa_banAnA"
;He tried to bluff people by all means to work out his plan.
;

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 26-02-2014
;He said he would resign if he didn't get more money, but it was only a bluff.[oald]
;उन्होंने कहा कि वह अधिक पैसा नहीं मिला, तो वह इस्तीफा दे देंगे, लेकिन कहा कि यह केवल एक धोखा/झूठ था.
(defrule bluff2
(declare (salience 0))
(id-root ?id bluff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JUTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bluff.clp 	bluff2   "  ?id "  JUTa )" crlf))
)
