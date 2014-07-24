
(defrule deserve0
(declare (salience 5000))
(id-root ?id deserve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id deserving )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  deserve.clp  	deserve0   "  ?id "  yogya )" crlf))
)

;"deserving","Adj","1.yogya"
;He is a deserving candidate for th first position in P.M.T.
;
(defrule deserve1
(declare (salience 4000))
(id-root ?id deserve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deserve.clp 	deserve1   "  ?id "  yogya_ho )" crlf))
)

;"deserve","VT","1.yogya_honA"
;I think that I deserve a reward for my patience.
;
;

;@@@ Added by Pramila(Banasthali University) on 13-12-2013
;They didn't deserve to win.            ;oald
;वे जीतने के लायक नहीं थे.
;He deserves to be locked up for ever for what he did.       ;oald
;उसने जो किया उसके लिए वह हमेशा के लिए बंद करने के लायक है .
(defrule deserve2
(declare (salience 4900))
(id-root ?id deserve)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-cat_coarse ?id1 verb)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAyaka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deserve.clp 	deserve2   "  ?id "  lAyaka_ho )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 13-12-2013
;Several other points deserve mentioning.         ;oald
;कई अन्य बिंदुओं का उल्लेख करना बनता है.
(defrule deserve3
(declare (salience 4900))
(id-root ?id deserve)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kqxanwa_karma  ?id ?id1)
(id-root-category-suffix-number ?id1 ? verb ing ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deserve.clp 	deserve3   "  ?id "  bana )" crlf))
)
